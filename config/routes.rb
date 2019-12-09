Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # Auth routes
      resources :users, only: [:create] 
      get '/account', to: 'users#account'
      patch '/account/:id', to: 'users#update'
      
      resources :auth, only: [:create]
      get '/current_user', to: 'auth#show'
      post '/login', to: 'auth#create'
      
      resources :relationships do 
        resources :events
      end

      resources :events do 
        resources :relationships
      end
      
      resources :relationship_events
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
