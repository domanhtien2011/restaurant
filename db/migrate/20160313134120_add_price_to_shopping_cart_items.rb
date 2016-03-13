class AddPriceToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :price, :decimal
  end
end
