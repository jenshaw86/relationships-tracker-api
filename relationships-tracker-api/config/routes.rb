Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  resources :users do 
    resources :events
    resources :relationships
  end

  resources :events
  resources :relationships
  resources :relationship_events


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
