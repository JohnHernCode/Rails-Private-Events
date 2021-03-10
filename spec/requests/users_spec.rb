require 'rails_helper'

RSpec.describe "Users", type: :request do
  
  describe "GET /show" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "GET /new" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "POST /create" do
    let(:user) { FactoryBot.create(:user) }
    it "redirects to root path" do
      post '/users', params: { user: FactoryBot.attributes_for(:user) }
      puts response.body
      expect(response).to redirect_to(root_path)
      expect(flash[:notice]).to be_present
    end
  end
end
