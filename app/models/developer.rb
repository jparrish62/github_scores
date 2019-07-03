class Developer < ApplicationRecord

  def self.find_developer(developer)
    Developer.find_by_first_name(developer)
  end

  def self.set_developer_score(login)
    dev = Developer.find_by_first_name(login)
    comments = Developer.find_number_of_comments
    request  = Developer.find_number_of_request * 12
    reviews  = Developer.find_number_of_reviews * 3
    dev.total_score = comments + request + reviews
    dev.save!
  end

  def self.find_number_of_comments(developer)
    PullRequestComments.find_number_of_comments(developer)
  end

  def sefl.find_number_of_request(developer)
    PullRequest.find_number_of_request(developer)
  end

  def self.find_number_of_reviews(developer)
    PullRequestReview.find_number_of_reviews(developer)
  end

  def self.find_dev_by_id(id)
    Developer.fin_by_id(id)
  end
end
