Rails.application.routes.draw do
  root to: 'locations#index'
  resources :locations, only: %i[:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
post '/locations/coordinates', to: 'locations#coordinates'
end
