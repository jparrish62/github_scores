class PullRequestComment < ApplicationRecord
  belongs_to :developer

  def self.set_data(developer, body, url)
    developer.pull_request_comments.create(user: developer[:fist_name], body: body, pull_request_url: url)
  end

  def self.find_number_of_comments(developer)
    PullRequestComment.where(user: developer).length
  end
end
