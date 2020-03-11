Rails.application.routes.draw do

  resources :item_carts
  resources :carts
  resources :items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :users
  root 'items#index'




end
