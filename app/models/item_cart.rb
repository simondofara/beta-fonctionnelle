class ItemCart < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  belongs_to :order

  def total_price
    self.quantity * self.item.price
  end

end
