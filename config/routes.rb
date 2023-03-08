Rails.application.routes.draw do
  resources :users
  resources :tracks
  resources :artists
  resources :albums

  # Custom routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/authorized', to: 'users#show'
  get "/hello", to: 'users#hello_world'
end