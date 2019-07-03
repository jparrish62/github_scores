class PullRequestReviewsController < ApplicationController
  respond_to :json

  def show
    respond_with Developer::DeveloperShowPullRequestReviewsCommand.call(params)
  end
end
