class Cart < ApplicationRecord
  has_many :item_carts, dependent: :destroy
  has_many :items, through: :item_carts

  # LOGIC
  def sub_total
    sum = 0
    self.item_carts.each do |line_item|
      sum+= item_cart.total_price
    end
    return sum
  end
  
end
