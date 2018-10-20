class Activity < ApplicationRecord
  has_many :participants
  accepts_nested_attributes_for :participants

  def active_participant
    participants.where(active: true).first
  end

  def participant_turn_taken(participant_id)
    participants.where.not(id: participant_id).first.update_attribute(:active, true)
    participants.find(participant_id).update_attribute(:active, false)
  end
end
