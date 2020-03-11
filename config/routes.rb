Rails.application.routes.draw do

  resources :item_carts
  resources :carts
  resources :items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'items#index'


  resources :orders


end
