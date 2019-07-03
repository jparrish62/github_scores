class PullRequest < ApplicationRecord
  belongs_to :developer

  def self.set_data(developer, body, url)
    developer.pull_requests.create(user: developer[:fist_name], body: body, pull_request_url: url)
  end

  def self.find_number_of_request(developer)
    PullRequest.where(user: developer).length
  end
end
