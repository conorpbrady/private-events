class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", class_name: "Event"
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendees,
            foreign_key: "event_id", class_name: "Event"
  scope :past, -> { where('event_date < ?', Date.today) }
  scope :future, -> { where('event_date > ?', Date.today) }
end
