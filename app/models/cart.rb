class Cart < ApplicationRecord
  has_many :join_cart_items
  has_many :items, through: :join_cart_items

  belongs_to :user
end
