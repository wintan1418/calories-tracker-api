Rails.application.routes.draw do
  resources :meals
  # collection do
  root 'users#index'
  post 'auth/login', to: 'auth#authenticate'
  post '/register', to: 'users#create'
  post 'details', to: 'users#details'

  resources :readings
  resources :meals, only: %i[index show]

  # end
end
