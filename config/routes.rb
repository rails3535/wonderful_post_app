Rails.application.routes.draw do

  root to: 'articles#index'
  # get "/articles/:id", to: "articles#show"
  devise_for :users
  # binding.pry
  resources :articles
  resources :sample_articles
end
