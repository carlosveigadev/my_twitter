Rails.application.routes.draw do
  resources :my_tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "my_tweets#index"
end
