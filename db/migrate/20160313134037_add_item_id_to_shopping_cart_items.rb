class AddItemIdToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :item_id, :integer
  end
end
