class Event < ApplicationRecord
  scope :past, -> { where('date < ?', Time.now) }
  scope :future, -> { where('date > ?', Time.now) }

  belongs_to :creator, class_name: "User"
  
  has_many :attendances, foreign_key: 'attended_event_id'
  has_many :attendees, through: :attendances, source: :event_attendee
end