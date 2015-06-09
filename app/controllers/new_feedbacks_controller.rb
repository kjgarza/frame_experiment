class NewFeedbacksController < ApplicationController

  layout :get_layout


  def new_feedback

  end

  def get_layout
    session[:planout_data][:template][:layout]
  end

end