class RemoveImageUrlFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :imageURL, :string
  end
end
