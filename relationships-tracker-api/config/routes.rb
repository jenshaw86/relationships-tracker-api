Rails.application.routes.draw do
  # resources :relationship_events
  resources :events
  resources :relationships
  resources :users
  resources :relationship_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
