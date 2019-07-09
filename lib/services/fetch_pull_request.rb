require "net/http"
require "uri"
require "json"
require "OpenSSL"

module PullRequest
  class FetchPullRequest
    def self.call
      new().call
    end

    def initialize
      uri = URI.parse("https://api.github.com/repos/jparrish62/github_scores/pulls/3/requested_reviewers")
      http = NET::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == 'https')
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(uri.request_uri)
      res = http.request(request)
      @response = JSON.parse(res.body)
    end

    def call
      set_data
      Score::DeveloperScore.call(login)
    end

    def set_data
      response.each do |res|
        PullRequest.set_data(developer, res.body, res.pull_request_url)
      end
    end

    private
    attr_reader :response

    def developer
      Developer.find_developer(login)
    end

    def login
      response.first.user['login']
    end
  end
end
