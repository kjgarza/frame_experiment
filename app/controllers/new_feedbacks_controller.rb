class NewFeedbacksController < ApplicationController

  layout :get_layout


  def new_feedback

  end

  def get_layout
    Planout.instance.get[:template][:layout]
  end

end