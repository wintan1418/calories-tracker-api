Rails.application.routes.draw do
  # collection do
  root 'users#index'
  post 'auth/login', to: 'auth#authenticate'
  post 'signup', to: 'users#create'
  post  'details', to: 'users#info'

  resources :readings
  
  # end
end
