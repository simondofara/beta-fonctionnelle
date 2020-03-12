class AddUserRefToOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :email
    add_reference :orders, :user, foreign_key: true
  end
end
