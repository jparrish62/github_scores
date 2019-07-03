class DevelopersController < ApplicationController
  respond_to :json

  def show
    dev = Developer.find(params[:id])
    respond_with [dev.pull_request_comments, dev.pull_request_reviews, dev.pull_requests]
  end
end
