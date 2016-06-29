class AddFieldsToOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :product_id, :integer
    remove_column :orders, :quantity, :integer
    remove_column :orders, :order_id, :integer

    add_column :orders, :user_id, :integer
  end
end
