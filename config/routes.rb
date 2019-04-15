Rails.application.routes.draw do
  get 'users/new'
  root 'welcome#index'
  get 'welcome/index'
  get     '/help', to: 'help#show'

  resources :listings
  resources :users
<<<<<<< HEAD

=======
>>>>>>> 1608fc774404ebd06baafd202bae11b1a5fad988
end
