Rails.application.routes.draw do
  
  root 'welcome#index'
  get 'welcome/index'

  get   '/help',  to: 'welcome#help'
  get   '/about', to: 'welcome#about'
  get   '/signup',to: 'users#new'
  post  '/signup',to: 'users#create'
  get   '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  delete'/logout',to: 'sessions#destroy'
  get   'change_password', to: 'users#change_password'

  resources :listings
  resources :users
  resources :reports
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
