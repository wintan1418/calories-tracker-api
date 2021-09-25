Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create, :show, :index ]
  #     resources :readings, only: [:create, :index]
  #   end
  # end
  root 'users#index'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  resources :results
 
end
