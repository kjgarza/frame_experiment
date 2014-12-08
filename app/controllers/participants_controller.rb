class ParticipantsController < ApplicationController
  layout "frame_experiment"
  require 'digest/sha1'

  def index

    Planout.instance.info()

    if @user = User.authenticate('kriztean', 'strewersk62S?')
      session[:user_id] = @user.id
    else
      puts "Invalid username/password."
    end

    redirect_to new_participant_path

  end

  def new
    Planout.instance
    @participant = Participant.new
  end

  def create

    if @user = User.authenticate('kriztean', 'strewersk62S?')
      session[:user_id] = @user.id
    else
      puts "Invalid username/password."
    end

    @participant = Participant.new(params[:participant])
    if @participant.save
      Planout.instance.info(
          discipline:params[:participant][:discipline],
          materials_type:params[:participant][:materials_type],
          sessionid:request.session_options[:id] ,
          year_born:params[:participant][:year_born],
          materials_type:params[:participant][:materials_type],
          howmany:params[:participant][:howmany],
          by:params[:participant][:by],
          when_best:params[:participant][:when_best],
          frequency: params[:participant][:frequency],
          update:params[:participant][:update]
      )

      redirect_to frame_experiment_path(:splash_screen, :website => '1st')
      # redirect_to root_path
    end
  end

end
