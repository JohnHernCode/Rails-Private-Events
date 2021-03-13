class User < ApplicationRecord
  # validates_presence_of :username
  validates_uniqueness_of :username
  validates :username, length: { minimum: 3 }

  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'

  has_many :attendances, foreign_key: 'event_attendee_id'
  has_many :attended_events, through: :attendances, source: :attended_event
end
