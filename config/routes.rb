Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'
  get 'welcome/index'
  get     '/help', to: 'help#show'

  resources :listings
  resources :users

end
