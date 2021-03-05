class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  has_many :attendees
  has_many :attendees, through: :attendance, source: "User"
end
