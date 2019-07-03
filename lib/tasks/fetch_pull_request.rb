namespace :pull_request do
  desc "Retrieves pull request"
  task :retrieve_pull_request => :environment do
    PullRequestComments::FetchPullRequest.call
  end
end
