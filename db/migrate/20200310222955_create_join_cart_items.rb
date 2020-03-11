class CreateJoinCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :join_cart_items do |t|
      t.integer :quantity

      t.references :items
      t.references :carts

      t.timestamps
    end
  end
end
