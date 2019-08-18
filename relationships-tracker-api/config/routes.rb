Rails.application.routes.draw do

  resources :users do 
    resources :events 
    resources :relationships
  end

  resources :events
  resources :relationships
  resources :relationship_events


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
