RSpec.describe PullRequestComment::FetchPullRequestComments, type: :class do
  describe ".call" do
    context "when a request it made" do
       it "saves all data" do
         described_class.call
         expect(PullRequestComment.last).to eq 2
       end
    end
  end
end
