class Cart < ApplicationRecord
<<<<<<< HEAD
  has_many :join_cart_items
  has_many :items, through: :join_cart_items

  belongs_to :user
=======
  has_many :item_carts, dependent: :destroy
  has_many :items, through: :item_carts

  def add_item(item)
    current_item = item_carts.find_by(item_id: item.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = item_carts.build(item_id: item.id)
    end
    current_item
  end
  def total_price
    item_carts.to_a.sum { |item| item.total_price }
  end
>>>>>>> master
end
