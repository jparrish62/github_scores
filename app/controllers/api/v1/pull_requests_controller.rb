class PullRequestsController < ApplicationController
  respond_to :json

  def show
    respond_with Developer::DeveloperShowPullRequestCommand.call(params)
  end
end
