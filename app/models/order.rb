class Order < ApplicationRecord
  has_many :item_carts, dependent: :destroy
end
