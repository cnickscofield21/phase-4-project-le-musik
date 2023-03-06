Rails.application.routes.draw do
  resources :users
  resources :tracks
  resources :artists
  resources :albums
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
