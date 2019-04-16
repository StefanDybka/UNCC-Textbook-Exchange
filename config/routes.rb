Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'

  get '/help', to: 'help#show'
  get '/about', to: 'about#show'
  get '/about', to: 'welcome#about'
  get '/signup',to: 'users#new'
  post'/signup',to: 'users#create'
  get '/help',  to: 'help#show'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :listings
  resources :users
  resources :help
  resources :about

end
