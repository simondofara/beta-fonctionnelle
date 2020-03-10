Rails.application.routes.draw do

  get 'orders/index'
  get 'orders/show'
  get 'orders/new'

  get 'carts/show'

  get 'items/index'
  get 'items/new'
  get 'items/edit'

  devise_for :users

  root "items#index"

  resources :items
  resources :users

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  post 'item_carts/:id/add' => "item_carts#add_quantity", as: "item_cart_add"
  post 'item_carts/:id/reduce' => "item_carts#reduce_quantity", as: "item_cart_reduce"
  post 'item_carts' => "item_carts#create"
  get 'item_carts/:id' => "item_carts#show", as: "item_cart"
  delete 'item_carts/:id' => "item_carts#destroy"


  resources :items
  resources :orders


end
