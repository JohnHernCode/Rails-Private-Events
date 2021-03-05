class User < ApplicationRecord
  has_many :created_events, class_name: "Event"
  has_many :attended_events
  has_many :attended_events, through: :attendance, source: "Event"
end
