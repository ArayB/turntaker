class ParticipantsController < ApplicationController
  def taken
    activity = Activity.find(params[:activity_id])
    activity.participant_turn_taken(params[:participant_id])
    redirect_to :root
  end
end
