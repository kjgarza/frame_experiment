require 'singleton'
require 'digest/sha1'
gem "logger"; require "logger"
gem "json"; require "json"
# require 'JSON'


  class Operator
    attr :args
    def initialize(**parameters)
      @args = parameters
    end

    def execute(mapper)
      return mapper.experiment_salt
    end
  end

  class OpSimple < Operator
    def execute(mapper)
      @mapper = mapper
      @parameters = Hash.new
      @args.each do |param, value|
        @parameters[param] = mapper.evaluate(value)
      end
      return self.simpleExecute()
    end

    def simpleExecute()
      return -1
    end
  end

  class OpRandom < OpSimple
    def getUnit(appended_unit=nil)
      unit = @parameters[:"unit"]

      if not unit.is_a? Array
        unit = [unit]
      end

      if appended_unit != nil
        unit += appended_unit
      end
      return unit
    end

    def getHash(appended_unit=nil)
      salt = @parameters[:"salt"]
      salty = '%s.%s' % [@mapper.experiment_salt, salt]
      unit_str = self.getUnit(appended_unit).join('.')
      x = '%s.%s' % [salty, unit_str]
      last_hex = (Digest::SHA1.hexdigest(x))[0..14]
      return last_hex.to_i(16)
    end

    def getUniform(min_val=0.0, max_val=1.0, appended_unit=nil)
      long_scale = Float(0xFFFFFFFFFFFFFFF) # not sure how to make this a constant
      zero_to_one = self.getHash(appended_unit)/long_scale
      return min_val + (max_val-min_val)*zero_to_one
    end
  end

  class RandomFloat < OpRandom
    def simpleExecute()
      min_val = @parameters.fetch(:min, 0)
      max_val = @parameters.fetch(:max, 1)
      return self.getUniform(min_val, max_val)
    end
  end

  class RandomInteger < OpRandom
    def simpleExecute()
      min_val = @parameters.fetch(:min, 0)
      max_val = @parameters.fetch(:max, 1)
      return min_val + self.getHash() % (max_val - min_val + 1)
    end
  end

  class BernoulliTrial < OpRandom
    def simpleExecute()
      p = @parameters[:p]
      rand_val = self.getUniform(0.0, 1.0)
      if rand_val <= p
        return 1
      else
        return 0
      end
    end
  end

  class UniformChoice < OpRandom
    def simpleExecute()
      choices = @parameters[:choices]
      if choices.length() == 0
        return []
      end
      rand_index = self.getHash() % choices.length()
      return choices[rand_index]
    end
  end

  class WeightedChoice < OpRandom
    def simpleExecute()
      choices = @parameters[:choices]
      weights = @parameters[:weights]
      if choices.length() == 0
        return []
      end
      cum_weights = Hash[choices.zip(weights)]
      cum_sum = 0.0
      cum_weights.each do |choice, weight|
        cum_sum += weight
        cum_weights[choice] = cum_sum
      end
      stop_value = self.getUniform(0.0, cum_sum)
      cum_weights.each do |choice, cum_weight|
        if stop_value <= cum_weight
          return choice
        end
      end
    end
  end


  class Assignment
    attr_reader :experiment_salt
    attr_reader :data

    def initialize(experiment_salt)
      @experiment_salt = experiment_salt
      @data = Hash.new
    end

    def evaluate(data)
      return data
    end

    def get(var, default=nil)
      if @data.has_key? var
        return @data[var]
      else
        return default
      end
    end

    # in python this would be defined as __setattr__ or __setitem__
    # not sure how to do this in Ruby.
    def set(name, value)
      if value.is_a? Operator
        if not value.args.has_key? 'salt'
          value.args[:salt] = name
        end
        @data[name] = value.execute(self)
      else
        @data[name] = value
      end
    end

    def [](x)
      return self.get(x)
    end

    def []=(x,y)
      self.set(x,y)
    end

    def get_params()
      return @data
    end
  end

  # I'd like to create decorators equivalent to Python's
  # @requires_assignment() and @requires_exposure_logging
  # (experiment.py:21, 29), but have no idea how...

  class Experiment
    attr :auto_exposure_log

    def initialize(**inputs)
      @inputs = inputs
      @exposure_logged = false
      @_salt = nil
      @in_experiment = true
      @name = self.class.name
      @auto_exposure_log = true

      self.setup()  # sets name, salt, etc.

      @assignment = Assignment.new(self.salt)
      @assigned = false

      @logger = nil
      setup()
    end

    def _assign()
      self.configure_logger()
      self.assign(@assignment, **@inputs)
      @in_experiment = @assignment.get(
          'in_experiment', @in_experiment)
      @assigned = true
    end

    def setup()
      return nil
    end

    def salt=(value)
      @_salt = value
    end

    def salt
      return @_salt ? @_salt : @name
    end

    def auto_exposure_log=(value)
      @auto_exposure_log = value
    end

    def configure_logger()
      return nil
    end

    def requires_assignment()
      if not @assigned
        self._assign()
      end
    end

    def is_logged?
      return @logged
    end

    def requires_exposure_logging()
      if @auto_exposure_log and @in_experiment and not @exposure_logged
        self.log_exposure()
      end
    end


    def get_params()
      requires_assignment()
      requires_exposure_logging()
      return @assignment.get_params()
    end

    def get(name, default=nil)
      requires_assignment()
      requires_exposure_logging()
      return @assignment.get(name, default)
    end

    def assign(params, *inputs)
      # up to child class to implement
      return nil
    end

    def log_event(event_type, extras = nil)
      if extras.nil?
        extra_payload = {'event' => event_type}
      else
        extra_payload = {
            'event' => event_type,
            'extra_data' => extras.clone
        }
      end
      self.log(self.as_blob(extra_payload))
    end

    def log_exposure(extras = nil)
      @exposure_logged = true
      self.log_event('exposure', extras)
    end

    def as_blob(extras = {})
      d = {
          'name' => @name,
          'time' => Time.now.to_i,
          'salt' => self.salt,
          'inputs' => @inputs,
          'params' => @assignment.data
      }
      extras.each do |key, value|
        d[key] = value
      end
      return d
    end
    # would like to know if I'm going in the right direction
    # from a Ruby hacker before I continue...
  end

  class SimpleExperiment < Experiment
    def configure_logger()
      filename = "" + self.class.name.split('::').last + ""
      # @logger = Logger.new(STDOUT)
      @logger = Logger.new("#{Rails.root}/public/"+filename)
      #@loger.level = Logger::WARN
      @logger.formatter = proc do
      |severity, datetime, progname, msg|
        " #{msg}\n"
        # "logged data: #{msg}\n"
      end
    end

    def log(data)
      @logger.info(JSON.dump(data))
    end
  end

  # class Planout < SimpleExperiment
  #   include Singleton
  #   def setup()
  #     #  self.salt = "VotingExperiment"
  #   end
  #
  #   # all assign() methods take params and an inputs array
  #   def assign(params, **inputs)
  #     userid = inputs[:userid]
  #     sessionid = inputs[:sessionid]
  #     age = inputs[:age]
  #     # ops = ["control", "treatment"]
  #     # ops = ["normal.html", "framed.html"]
  #
  #     treatment = {
  #         :header_frames => "lololo",
  #         :searchfade_repeat => "searchfade-treatment.png",
  #         :primary_btn => "Create",
  #         :secondary_btn => "Make",
  #         :sharing_form => "assets/treatment_sharing_form",
  #         :left_logo => "left_logo_treatment.jpg",
  #         :right_logo=> "right_logo_treatment.jpg",
  #     }
  #
  #     control = {
  #         :header_frames => "blalala",
  #         :searchfade_repeat => "searchfade-control.png",
  #         :primary_btn => "Upload",
  #         :secondary_btn => "Save",
  #         :sharing_form => "assets/control_sharing_form",
  #         :left_logo => "left_logo_control.jpg",
  #         :right_logo=> "right_logo_control.jpg",
  #     }
  #
  #     # treatments = {:control =>control, :treatment=> treatment}
  #     treatments = [control, treatment]
  #
  #     params[:template1] = UniformChoice.new(
  #         choices: treatments, unit:[userid, sessionid, age])
  #
  #     # treatments.except(params[:template1])
  #     treatments.delete(params[:template1])
  #     params[:template2] = UniformChoice.new(
  #         choices: treatments, unit:[userid])
  #
  #   end
  # end

class FrameExperiment < SimpleExperiment
  def setup()
    #  self.salt = "VotingExperiment"
  end

  # all assign() methods take params and an inputs array
  def assign(params, **inputs)
    sessionid = inputs[:sessionid]
    # userid = inputs[:userid]
    man_hours = inputs[:man_hours]
    discipline = inputs[:discipline]
    materials_type = inputs[:materials_type]
    year_born = inputs[:year_born]
    howmany = inputs[:howmany]
    ways = inputs[:ways]
    when_best = inputs[:when_best]
    frequency = inputs[:frequency]
    updating = inputs[:updating]
    trial = inputs[:trial]
    # ops = ["control", "treatment"]
    # ops = ["normal.html", "framed.html"]
    initials = [sessionid,discipline,materials_type,year_born,howmany, ways,when_best,frequency,updating,man_hours,trial ]

    treatment = {
        :title => "cite DataLabour",
        :name => "TREATMENT",
        :preferences_title => "Citation Preferences",
        :header_frames => "Control and make your data citable.",
        :searchfade_repeat => 'searchfade-treatment.jpg',
        :primary_btn => "Create",
        :secondary_btn => "Make",
        :sharing_form => "assets/treatment_sharing_form",
        :left_logo => "left_logo_treatment.png",
        :right_logo => "right_logo_treatment.png",
        :styles_css => "assets_dev/styles_treatment.css?body=1",
        :color => '146EB4',
        :primary_btn_title => 'Create citable data',
        :layout => "application",
        :link_title => "Cite with",
        :upload_title => "New Citable Datafile",
        :help => "frame_experiment/treatment_help",
        :discipline => discipline,
        :with_who_options => [
            "Public can cite",
            "People involved in my projects can reference",
            "Collaborators can reference",
            "Nobody, Keep it Private"],
        :when_options => [
            "in 6 Months",
            "in 1 Year",
            "in 3 Years",
            "in 10 Years"],
    }

    control = {
        :title => "Jam Share Data",
        :name => "CONTROL",
        :preferences_title => "Sharing Preferences",
        :header_frames => "Find, share and exchange Data, Models and Processes within the Community",
        :searchfade_repeat => 'searchfade-control.jpg',
        :primary_btn => "Upload",
        :secondary_btn => "Save",
        :sharing_form => "assets/control_sharing_form",
        :left_logo => "left_logo_control.png",
        :right_logo=> "right_logo_treatment.png",
        :styles_css => "assets_dev/styles_control.css?body=1",
        :color => '7CB9E8',
        :primary_btn_title  => 'New data upload',
        :layout => "application_bootstrap",
        :link_title => "Share with",
        :upload_title => "New Datafile for Sharing",
        :help => "frame_experiment/control_help",
        :discipline => discipline,
        :with_who_options => [
            "Share with the Public",
            "Share with People involved in my projects",
            "Share with my Collaborators",
            "Nobody, Keep it Private"],
    }

    # treatments = {:control =>control, :treatment=> treatment}
    treatments = [control, treatment]

    params[:template1] = UniformChoice.new(
        choices: treatments, unit:initials)

    # treatments.except(params[:template1])
    treatments.delete(params[:template1])
    params[:template2] = UniformChoice.new(
        choices: treatments, unit:initials)

  end
end


class Planout
  include Singleton

  def initialize
    @output = []
    @inputs = []
    @one = []
    @trial_number = 0
  end

  attr_reader :output


  def info(**inputs)
    @framing_exp = FrameExperiment.new(inputs)
    @inputs = inputs
    @output = @framing_exp.get_params()
    @output[:template] = @output[:template1]
  end

  # def getOne(name)
  #   @one = @framing_exp.get(name)
  #   @one ||= []
  # end

  def set_trial_number(number)
    @trial_number = number
    if number > 0
      @output[:template] = @output[:template2]
    end
    if number < 1
      @output[:template] = @output[:template1]
    end
  end

  def get_trial_number
    @trial_number
  end

  def get
    @output ||= []
  end

  def get_inputs
    @inputs ||= []
  end

  def log_event(event_type, extras = nil)
    @framing_exp.get(:template1)
    @framing_exp.log_event(event_type, extras)
  end

end
