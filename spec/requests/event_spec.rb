require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /index" do
    describe "GET index" do
      it "assigns @events" do
        events = Event.all
        get :create, params[username: 'Bob111']
        expect(@events).to eq([events])
      end
    end
  end
end


# RSpec.describe TeamsController do
#   describe "GET index" do
#     it "assigns @teams" do
#       team = Team.create
#       get :index
#       expect(assigns(:teams)).to eq([team])
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end
# end