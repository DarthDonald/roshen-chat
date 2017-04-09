class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :name
      t.integer :admin_id
      t.text :user_ids, array: true, default: []

      t.timestamps null: false
    end
  end
end
