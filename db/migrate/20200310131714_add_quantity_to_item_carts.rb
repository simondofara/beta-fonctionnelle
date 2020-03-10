class AddQuantityToItemCarts < ActiveRecord::Migration[5.2]
  def change
     add_column :item_carts, :quantity, :integer, default: 1
  end
end
