class ItemCart < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  belongs_to :order

  def total_price
    self.quantity * self.product.price
  end

end
