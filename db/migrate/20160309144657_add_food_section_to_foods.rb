class AddFoodSectionToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :foodSection, :string
  end
end
