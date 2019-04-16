Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'
  get 'welcome/index'
  get '/help', to: 'help#show'
  get '/about', to: 'about#show'
  
  resources :listings
  resources :users
  resources :help
  resources :about

end
