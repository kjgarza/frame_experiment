class FrameExperimentController < ApplicationController

  # require  'planout'
  require 'digest/sha1'

  include Wicked::Wizard

  steps :information, :scenario, :consent,  :instructions , :splash_screen, :usability_ask, :washout_instructions, :washout, :awareness, :debrief

  @project = Project.find('1')


  def show


    # lol = Planout.instance


    # time = Time.now
    # Planout.instance.info(
    #     discipline:"Jose",
    #     sessionid:request.session_options[:id] ,
    #     year_born:rand(1..300),
    #     discipline:rand(1..300),
    #     materials_type:rand(1..300),
    #     howmany:rand(1..300),
    #     by:rand(1..300),
    #     when_best:rand(1..300),
    #     frequency:rand(1..300),
    #     update:rand(1..300)
    # )

    # framing_exp = Planout.new(userid:"Jose", sessionid:"framed_string",age:rand(1..300))
# puts "%s" % framing_exp.class.name.split('::').last


    # template1 = lol.get
    # template1 = framing_exp.get(:template1)



    # @books = Planout.instance.get[:template][:header_frames]
    # @books = template1[:header_frames]

    # puts "button color is %s and button text is %s" %
             # [framing_exp.get(:template1), framing_exp.get(:template2)]





    render_wizard
  end

  def consent
    redirect_to frame_experiment_instructions_path
  end


  def washout
    Planout.instance.set_trial_number(1)
    redirect_to frame_experiment_path(:splash_screen, :website => '2nd')
    # redirect_to root_path
  end


  def awareness

    Planout.instance.log_event('awareness_evaluation', {
        'academic' => params[:academic],
        'trust' => params[:trust],
        'awareness' => params[:awareness],
        'honest' => params[:honest]
    })



    redirect_to frame_experiment_debrief_path
  end



  def new_feedback

  end


  def usability_ask

    if Planout.instance.get_trial_number == 0

      Planout.instance.log_event('first_evaluation', {
          'support' => params[:support],
          'time' => params[:time],
          'ease' => params[:ease],
          'regret' => params[:regret]
      })

      redirect_to frame_experiment_washout_path
    else
      Planout.instance.log_event('second_evaluation', {
          'support' => params[:support],
          'time' => params[:time],
          'ease' => params[:ease],
          'regret' => params[:regret]
      })

      Planout.instance.set_trial_number(0)
      redirect_to frame_experiment_awareness_path
    end

  end

end