class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
      t.integer :quantity
      t.integer :food_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
