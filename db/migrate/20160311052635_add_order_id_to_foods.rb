class AddOrderIdToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :order_id, :integer
  end
end
