class RemoveFoodSectionFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :foodSection, :string
  end
end
