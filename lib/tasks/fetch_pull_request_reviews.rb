namespace :pull_request_review do
  desc "Retrieves pull request reviews"
  task :pull_request_reviews => :environment do
    PullRequestReview::FetchPullRequestReviews.call
  end
end
