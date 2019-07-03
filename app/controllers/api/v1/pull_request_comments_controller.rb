class PullRequestCommentsController < ApplicationController
  respond_to :json

  def show
    respond_with Developer::DeveloperShowPullRequestComments.call(params)
  end
end
