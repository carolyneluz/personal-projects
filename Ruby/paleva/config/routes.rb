Rails.application.routes.draw do
  resources :restaurant_owners, only: [:new, :create]
  root "home#index"
end
