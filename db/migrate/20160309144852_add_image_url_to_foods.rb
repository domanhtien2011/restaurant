class AddImageUrlToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :imageURL, :string
  end
end
