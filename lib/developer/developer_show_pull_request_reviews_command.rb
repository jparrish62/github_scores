module Developer
  class DeveloperShowPullRequestCommand
    def self.call(params)
      new(params).call
    end

    def initialize(params)
      @id = params[:id]
    end

    def call
      developer.pull_request_reviews
    end

    private
    attr_reader :id

    def developer
      Developer.find_dev_by_id(id)
    end
  end
end
