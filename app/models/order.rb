class Order < ApplicationRecord
  has_many :join_order_items
  has_many :items, through: :join_order_items

  belongs_to :user
end
