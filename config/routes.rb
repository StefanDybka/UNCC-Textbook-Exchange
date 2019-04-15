Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'
  get '/about', to: 'welcome#about'
  get 'users/new'
  get '/help',  to: 'help#show'

  resources :listings
  resources :users

end
