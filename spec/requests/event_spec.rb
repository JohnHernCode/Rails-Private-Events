require 'rails_helper'

RSpec.describe "Events", type: :request do
  
  describe "GET /show" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "GET /new" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "POST /create" do
    let(:event) { FactoryBot.create(:event) }
    let(:current_user) { FactoryBot.create(:user) }
    it "redirects to show path" do
      helper.sign_in_as 'david'
      post '/event', params: { event: FactoryBot.attributes_for(:event) }
      # puts response.body
      expect(response).to redirect_to(show_path)
      expect(flash[:notice]).to be_present
    end
  end

end
