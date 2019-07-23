class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendees, foreign_key: :event_id
  has_many :attendees, through: :event_attendees, class_name: "User"

  scope :past, -> { where('event_date < ?', Date.today) }
  scope :future, -> { where('event_date > ?', Date.today) }
  
  def in_attendence?(user)
    !self.attendees.find_by(id: user.id).nil?
  end
end
