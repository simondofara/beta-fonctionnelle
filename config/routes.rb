Rails.application.routes.draw do

  root "items#index"

  resources :items, only: [:index, :show], path: :image

  devise_for :users

  resources :carts

  resources :users
  resources :orders

end
