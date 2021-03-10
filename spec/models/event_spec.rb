require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    it "should belong to one creator" do
    t = Event.reflect_on_association(:creator)
    expect(t.macro).to eq(:belongs_to)
    end
    it "should has many attendances" do
      a = Event.reflect_on_association(:attendances)
      expect(a.macro).to eq(:has_many)
    end
    it "should has many attended events" do
      e = Event.reflect_on_association(:attendees)
      expect(e.macro).to eq(:has_many)
    end
  end
end