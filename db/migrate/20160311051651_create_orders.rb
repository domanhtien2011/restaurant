class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :username
      t.integer :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
