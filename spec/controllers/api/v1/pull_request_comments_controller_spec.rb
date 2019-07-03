require 'rails_helper'

RSpec.describe PullRequestCommentsController, type: :controller do
  describe "#show"  do
     before(:each) do
        @dev = FactoryBot.create(:developer, first_name: "Timy")
        FactoryBot.create(:pull_request_comment, developer_id: @dev.id)
        get :show, params: {id: @dev.id}, format: :json
    end
    it "returns all pull request comments associated with this developer" do
      expect(response.status).to eq 200
    end
 end
end
