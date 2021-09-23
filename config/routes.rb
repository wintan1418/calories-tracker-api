Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show]
      resources :readings, only: [:create, :index]
    end
  end
 
end
