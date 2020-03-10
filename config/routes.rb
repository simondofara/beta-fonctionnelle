Rails.application.routes.draw do

  resources :item_carts
  resources :carts
  resources :items
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'items#index'

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'item_carts/:id/add' => "item_carts#add_quantity", as: "item_cart_add"
  post 'item_carts/:id/reduce' => "item_carts#reduce_quantity", as: "item_cart_reduce"
  post 'item_carts' => "item_carts#create"
  get 'item_carts/:id' => "item_carts#show", as: "item_cart"
  delete 'item_carts/:id' => "item_carts#destroy"



  resources :orders


end
