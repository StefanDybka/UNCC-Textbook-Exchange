Rails.application.routes.draw do
  
<<<<<<< HEAD
  root 'welcome#index'
  get 'welcome/index'

  get '/help', to: 'welcome#help'
  get '/about', to: 'welcome#about'
  get '/signup',to: 'users#new'
  post'/signup',to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
=======
  get 'password_resets/new'
  get 'password_resets/edit'
  root  'welcome#index'
  get   'welcome/index'
>>>>>>> 01c885581e61f95b789d37d855ca5d4def6d5665

  get   '/help',    to: 'welcome#help'
  get   '/about',   to: 'welcome#about'
  get   '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete'/logout',  to: 'sessions#destroy'

  resources :listings
  resources :users
  resources :reports
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
