Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # Auth routes
      resources :users, only: [:create] 
      get '/account', to: 'users#account'
      patch '/account', to: 'users#update'
      post '/login', to: 'auth#create'
      
      
    end
  end

  # resources :users do 
  #   resources :events
  #   resources :relationships
  # end

  # resources :events
  # resources :relationships
  # resources :relationship_events


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
