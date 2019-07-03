Rails.application.routes.draw do
 namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :pull_request,            only: [:show]
      resources :pull_request_comments,   only: [:show]
      resources :pull_request_review,     only: [:show]
      resources :developers,              only: [:show]
    end
  end
end
