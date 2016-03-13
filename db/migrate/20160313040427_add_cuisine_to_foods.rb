class AddCuisineToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :cuisine, :string
  end
end
