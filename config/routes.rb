Rails.application.routes.draw do
  # resources :ratings
  # resources :restrooms
  resources :restrooms, only:[:index, :show,]
  resources :users, only:[:show, :create, :update ,:destroy]
  resources :ratings #full CRUD capabilties no need to specfy routes 
  root to: 'locations#index'
  resources :locations, only: %i[:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post'/login', to: 'sessions#login'
  delete'/logout/', to: 'sessions#logout'
  get '/usersession/', to: 'users#user_session'
  post '/locations/coordinates', to: 'locations#coordinates'
end
