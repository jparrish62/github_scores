namespace :comments do
  desc "Retrieves Comment"
  task :retrieves_comments => :environment do
    PullRequestComment::FetchPullRequestComments.call
  end
end
