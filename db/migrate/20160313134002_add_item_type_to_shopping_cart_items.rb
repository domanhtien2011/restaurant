class AddItemTypeToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :item_type, :string
  end
end
