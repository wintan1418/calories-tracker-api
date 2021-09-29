Rails.application.routes.draw do
  root 'users#index'
  post 'auth/login', to: 'auth#authenticate'
  post 'signup', to: 'users#create'
  get  'details', to: 'users#details'

  resources :readings
  
 
end
