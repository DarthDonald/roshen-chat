class CreateGiftCertificates < ActiveRecord::Migration
  def change
    create_table :gift_certificates do |t|
      t.integer :amount, default: 0
      t.integer :user_id
      t.integer :order_id
      t.string :token

      t.timestamps null: false
    end
  end
end
