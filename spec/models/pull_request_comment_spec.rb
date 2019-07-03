require 'rails_helper'

RSpec.describe PullRequestComment, type: :model do
  describe ".set_data" do
    it "sets pull request data" do
      PullRequestComment.set_data("John", "Good job", "this_is_a_url_string")
      comment = PullRequestComment.find_by_user("John")
      expect(comment.body).to eq "Good job"
    end
  end
end

