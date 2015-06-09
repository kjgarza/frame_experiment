class ParticipantsController < ApplicationController
  layout "frame_experiment"
  require 'digest/sha1'
  # include PlanOut
  # require_relative '../../lib/plan_out'

  def index

    Planout.instance.info()

    @user = User.authenticate('alex', 'wja0DjFEGd9D')
    # if @user = User.authenticate('alex', 'wja0DjFEGd9D')
    # if @user = User.authenticate('kriztean', 'strewersk62S?')
    session[:user_id] = @user.id
    # else
    # puts "Invalid username/password."
    # end

    redirect_to new_participant_path

  end

  def new
    Planout.instance
    # session[:planout] = Planout.instance
    @participant = Participant.new

  end

  def create

    @user = User.authenticate('alex', 'wja0DjFEGd9D')
    # if @user = User.authenticate('alex', 'wja0DjFEGd9D')
    # if @user = User.authenticate('kriztean', 'strewersk62S?')
      session[:user_id] = @user.id
    # else
      # puts "Invalid username/password."
    # end

    @participant = Participant.new(params[:participant])
    if @participant.save
      Planout.instance.info(
          discipline:params[:participant][:discipline],
          materials_type:params[:participant][:materials_type],
          man_hours:params[:participant][:man_hours],
          sessionid:request.session_options[:id],
          # sessionid:request.session_options,
          # sessionid:session,
          # sessionid:session[:tongue],
          year_born:params[:participant][:year_born],
          howmany:params[:participant][:howmany],
          # ways:params[:participant][:ways],
          # when_best:params[:participant][:when_best],
          # frequency: params[:participant][:frequency],
          tongue: params[:participant][:tongue],
          trial: 0
          # updating:params[:participant][:updating]
      )

      # cross = PlanOut::CrossExperiment.new(
      #     discipline:params[:participant][:discipline],
      #     materials_type:params[:participant][:materials_type],
      #     man_hours:params[:participant][:man_hours],
      #     sessionid:request.session_options[:id],
      #     # sessionid:request.session_options,
      #     # sessionid:session,
      #     # sessionid:session[:tongue],
      #     year_born:params[:participant][:year_born],
      #     howmany:params[:participant][:howmany],
      #     # ways:params[:participant][:ways],
      #     # when_best:params[:participant][:when_best],
      #     # frequency: params[:participant][:frequency],
      #     tongue: params[:participant][:tongue],
      #     trial: 0
      # )

      # cross.set_temp
      # @user.set_planout(cross)


      session[:planout_input]  = Planout.instance.get_inputs
      session[:planout_data]   = Planout.instance.get
      session[:planout_trial]  = Planout.instance.get_trial_number
      # session[:planout_data][:inputs]  = Planout.instance.get_inputs


      # redirect_to frame_experiment_path(:splash_screen, :website => cross.get_all)
      redirect_to frame_experiment_path(:splash_screen, :website => '1st')
      # redirect_to root_path
    end
  end

end
