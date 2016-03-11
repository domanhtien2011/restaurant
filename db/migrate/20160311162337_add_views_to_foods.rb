class AddViewsToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :views, :integer
  end
end
