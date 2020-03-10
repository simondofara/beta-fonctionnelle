class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_one_attached :cat_image
  has_many :item_carts
  has_many :carts, through: :item_carts
end
