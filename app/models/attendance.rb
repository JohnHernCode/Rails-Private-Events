class Attendance < ApplicationRecord
  validates_uniqueness_of :event_attendee,
                          scope: 'attended_event',
                          message: 'is already going to the event'
  belongs_to :event_attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
