class AddSumToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :sum, :integer, default: 0
  end
end
