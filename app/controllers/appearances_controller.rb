class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    appearance = Appearance.new(appearance_params)
    if appearance.valid?
      appearance.save
      redirect_to episodes_path
    else
      redirect_to new_appearance_path
    end
    # wanted to redirect to the episode page, but params[:episode_id] isnt the way
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
