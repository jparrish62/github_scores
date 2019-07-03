class PullRequestReview < ApplicationRecord
  belongs_to :developer

  def self.set_data(developer, body, url)
    developer.pull_request_reviews.create(user: developer[:fist_name], body: body, pull_request_url: url)
  end

  def self.find_number_of_reviews(developer)
    PullRequestReview.where(user: developer).length
  end

end
