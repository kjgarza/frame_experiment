class FrameExperimentController < ApplicationController

  # require  'planout'
  require 'digest/sha1'

  include Wicked::Wizard

  steps :information, :consent, :scenario,  :instructions , :splash_screen, :usability_ask, :washout, :washout_first,
        :washout_second,
        :washout_third,
        :washout_fourth,
        :washout_fifth,
        :washout_sixth,
        :washout_seventh,
        :washout_eighth,
        :washout_ninth,
        :washout_tenth,
        :washout_eleventh,
        :washout_twelfth,
        :splash_screen,
        :awareness, :debrief

  @project = Project.find('1')


  #
  # first   = Hash["x", 100, "y", 200, "letter", 'G', "trasnform", "scale(-1, 1) rotate(0)"]
  # second  = Hash["x", 100, "y", 200, "letter", 'j', "trasnform", "rotate(30)"]
  # third   = Hash["x", 100, "y", 200, "letter", '5', "trasnform", "rotate(135)"]
  # fourth  = Hash["x", 100, "y", 200, "letter", 'R', "trasnform", "scale(-1, 1) rotate(180)"]
  # fifth   = Hash["x", 100, "y", 200, "letter", 'J', "trasnform", "scale(-1, 1) rotate(180)"]
  # sixth   = Hash["x", 100, "y", 200, "letter", 'F', "trasnform", "rotate(-30)"]
  # seventh = Hash["x", 100, "y", 200, "letter", '5', "trasnform", "scale(-1, 1) rotate(-30)"]
  # eighth  = Hash["x", 100, "y", 200, "letter", '2', "trasnform", "rotate(-30)"]
  #
  #
  # @mental_rotations = {
  #     :first=>first,
  #     :second => second,
  #     :third => third,
  #     :fourth =>fourth,
  #     :fifth =>fifth,
  #     :sixth =>sixth,
  #     :seventh =>seventh,
  #     :eighth =>eighth
  # }

  def show

    render_wizard
  end

  def consent
    redirect_to frame_experiment_path(:scenario)
  end

  def washout
    # Planout.instance.set_trial_number(1)
    # session[:planout].set_trial_number(1)
    # session[:planout_data][:inputs][:trial] = 1
    # session[:planout_data][:template] = session[:planout_data][:template2]

    ## MEthod single
    # Planout.instance.set_trial_number(1)

    ### bamdad
    # session[:planout].set_trial_number(1)

    ### stuart
    session[:planout_trial] = 1
    session[:planout_data][:template] = session[:planout_data][:template2]

    redirect_to frame_experiment_path(:washout_first)
    # redirect_to root_path
  end

  def washout_twelfth
    # Planout.instance.set_trial_number(1)
    redirect_to frame_experiment_path(:splash_screen, :website => '2nd')
    # redirect_to root_path
  end



  def awareness

    Planout.instance.log_event('awareness_evaluation', {
        'sessionid' => request.session_options[:id],
        'treatment' => session[:planout_data][:template][:title],
        'inputs' => session[:planout_input],
        'academic' => params[:academic],
        'trust' => params[:trust],
        'awareness' => params[:awareness],
        'email' => params[:email],
        'honest' => params[:honest],
        'ways' => params[:ways],
        'when_best' => params[:when_best],
        'frequency' => params[:frequency],
        'updating' => params[:updating]
    })



    redirect_to frame_experiment_debrief_path
  end


  # def set_trial_number(number)
  #
  #   if number > 0
  #     session[:planout_data][:template] = session[:planout_data][:template2]
  #   end
  #   if number < 1
  #     session[:planout_data][:template] = session[:planout_data][:template1]
  #   end
  #
  # end



  def new_feedback

  end

  def download
    send_file 'mydataset.xls', :type => 'application/vnd.ms-excel', :disposition => 'attachment', :filename=>'something.mp3', :x_sendfile=>true
  end

  def usability_ask

    if session[:planout_trial] == 0
    # if Planout.instance.get_trial_number == 0

      Planout.instance.log_event('first_evaluation', {
          'sessionid' => request.session_options[:id],
          'treatment' => session[:planout_data][:template][:title],
          'inputs' => session[:planout_input],
          'support' => params[:support],
          'time' => params[:time],
          'ease' => params[:ease],
          'regret' => params[:regret]
      })

      redirect_to frame_experiment_washout_path
    else
      Planout.instance.log_event('second_evaluation', {
          'sessionid' => request.session_options[:id],
          'treatment' => session[:planout_data][:template][:title],
          'inputs' => session[:planout_input],
          'support' => params[:support],
          'time' => params[:time],
          'ease' => params[:ease],
          'regret' => params[:regret]
      })

      ## MEthod single
      # Planout.instance.set_trial_number(0)

      ### bamdad
      # session[:planout].set_trial_number(0)

      ### stuart
      session[:planout_trial] = 0
      session[:planout_data][:template] = session[:planout_data][:template1]
      redirect_to frame_experiment_awareness_path
    end

  end

end