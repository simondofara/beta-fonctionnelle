class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_url, presence: true

  has_many :item_carts
  has_many :carts, through: :item_carts
end
