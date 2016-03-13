class AddOwnerIdToShoppingCartItems < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :owner_id, :integer
  end
end
