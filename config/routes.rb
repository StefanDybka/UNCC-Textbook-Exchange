Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'
  get '/about', to: 'welcome#about'
  get '/signup',to: 'users#new'
  post'/signup',to: 'users#new'
  get '/help',  to: 'help#show'

  resources :listings
  resources :users

end
