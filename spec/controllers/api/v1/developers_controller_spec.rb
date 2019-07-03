require 'rails_helper'

RSpec.describe DevelopersController, type: :controller do
  describe "#show"  do
     before(:each) do
        @dev = FactoryBot.create(:developer, first_name: "Timy")
        FactoryBot.create(:pull_request_comment, developer_id: @dev.id)
        get :show, params: {id: @dev.id}, format: :json
    end
    it "returns an array of pull request, pull request reviews and pull request commnets associated with this developer" do
      expect(response.status).to eq 200
    end
 end
end
