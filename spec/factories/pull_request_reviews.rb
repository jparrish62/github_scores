FactoryBot.define do
  factory :pull_request_review do
    pull_request_url { "MyString" }
    body { "MyString" }
    user { "MyString" }
    developer { nil }
  end
end
