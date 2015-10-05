class MentalRotationsController < ApplicationController

  include Wicked::Wizard

  layout "frame_experiment"

  steps  :first, :second, :third,


  def show





    render_wizard
  end

end
