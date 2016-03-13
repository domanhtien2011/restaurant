class AddUsernameToShoppingCarts < ActiveRecord::Migration
  def change
    add_column :shopping_carts, :username, :string
  end
end
