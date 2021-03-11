require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it 'should belong to one event attendee' do
      t = Attendance.reflect_on_association(:event_attendee)
      expect(t.macro).to eq(:belongs_to)
    end
    it 'should belong to one attended_event' do
      t = Attendance.reflect_on_association(:attended_event)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
