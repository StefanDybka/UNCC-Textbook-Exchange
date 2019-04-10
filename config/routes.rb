Rails.application.routes.draw do
  get 'welcome/index'

  resources :listings
  resources :users
  
  root 'welcome#index'
end
