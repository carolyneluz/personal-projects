Rails.application.routes.draw do
  root to: 'movies#index'
  resources :genres
  resources :directors
  resources :movies
end
