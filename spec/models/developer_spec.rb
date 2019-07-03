require 'rails_helper'

RSpec.describe Developer, type: :model do
  describe ".find_developer" do
    context "when a developers first name is passed in" do
       it "returns developer" do
          developer = FactoryBot.create(:developer, first_name: "John")
          expect(Developer.find_developer(developer.first_name)).to eq "John"
       end
    end
  end

  describe ".set_developer_score" do
    FactoryBot.create(:pull_request_comment, user: "John")
    FactoryBot.create(:pull_request_review, user: "John")
    FactoryBot.create(:pull_requst, user: "John")
    FactoryBot.create(:pull_requst, user: "John")
    it "sets developer total score" do
      Developer.set_developer_score("John")
      expect(Developer.find_by_first_name("John").total_score).to eq 28
    end
  end

  describe ".find_number_of_request" do
    FactoryBot.create(:pull_requst, user: "John")
    FactoryBot.create(:pull_requst, user: "John")
    FactoryBot.create(:pull_requst, user: "John")
    it "returns number of pull request" do
      expect(Developer.find_number_of_request('John')).to eq 3
    end
  end

  describe ".find_number_of_comments" do
    FactoryBot.create(:pull_request_comment, user: "John")
    FactoryBot.create(:pull_request_comment, user: "John")
    FactoryBot.create(:pull_request_comment, user: "John")
    FactoryBot.create(:pull_request_comment, user: "John")
    it "returns number of comments" do
      expect(Developer.find_number_of_comments("John")).to eq 4
    end
  end

  describe ".find_number_of_reviews" do
    FactoryBot.create(:pull_request_review, user: "John")
    FactoryBot.create(:pull_request_review, user: "John")
    FactoryBot.create(:pull_request_review, user: "John")
    it "returns number of reviews" do
      expect(Developer.find_number_of_reviews("John")).to eq 3
    end
  end

  describe ".find_by_dev_id" do
    @dev = FactoryBot.create(:developer, first_name: "Julian")
    it "return developer" do
      developer = Developer.find_dev_by_id(@developer.id)
      expect(developer.first_name).to eq @dev.first_name
    end
  end
end











