require "net/http"
require "uri"
require "json"
require "OpenSSL"

module PullRequestReview
  class FetchPullRequestReviews
    def self.call
      new().call
    end

    def initialize
      uri = URI.parse("https://api.github.com/")
      http = NET::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == 'https')
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(uri.request_uri)
      res = http.request(request)
      @response = JSON.parse(res.body)
    end

    def call
      response
    end

    private
    attr_reader :response
  end
end
