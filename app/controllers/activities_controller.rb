class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
    @activity.participants << Array.new(2, Participant.new)
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to root_path
      return
    end
    render :new
  end

  private

  def activity_params
      params.require(:activity)
            .permit(:title, participants_attributes: [:name, :active])
  end
end
