class Event < ApplicationRecord
  validates_presence_of :description
  validates_presence_of :date
  scope :past, -> { where('date < ?', Time.now) }
  scope :future, -> { where('date > ?', Time.now) }

  belongs_to :creator, class_name: 'User'

  has_many :attendances, foreign_key: 'attended_event_id'
  has_many :attendees, through: :attendances, source: :event_attendee
end
