class AddOwnerTypeToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :owner_type, :string
  end
end
