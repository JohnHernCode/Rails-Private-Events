require 'rails_helper'

RSpec.describe "Events", type: :request do
  
  describe "GET /show" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "GET /new" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "POST /create" do
    it "redirects to show path" do
      create_params = FactoryBot.create(:event)
      post :create, create_params
      expect redirect path to show_path
    end
  end

end
