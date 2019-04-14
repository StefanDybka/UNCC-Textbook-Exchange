Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'
  get 'welcome/index'

  resources :listings
  resources :users
end
