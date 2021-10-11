Rails.application.routes.draw do
  resources :meals
  # collection do
  root 'users#index'
  post 'auth/login', to: 'auth#authenticate'
  post '/register', to: 'users#create'
  post 'details', to: 'users#info'

  resources :readings

  # end
end
