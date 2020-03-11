class CreateItemCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :item_carts do |t|
      t.integer :quantity, default: 1
      t.integer :item_id
      t.integer :cart_id
      t.integer :order_id

      t.timestamps
    end
  end
end
