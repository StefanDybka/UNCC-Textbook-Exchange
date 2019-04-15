Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'
  get '/about', to: 'welcome#about'
  get '/help', to: 'welcome#help'
  get 'users/new'

  resources :listings
  resources :users
end
