require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it 'should has many created events' do
      t = User.reflect_on_association(:created_events)
      expect(t.macro).to eq(:has_many)
    end
    it 'should has many attendances' do
      a = User.reflect_on_association(:attendances)
      expect(a.macro).to eq(:has_many)
    end
    it 'should has many attended events' do
      e = User.reflect_on_association(:attended_events)
      expect(e.macro).to eq(:has_many)
    end
  end
end
