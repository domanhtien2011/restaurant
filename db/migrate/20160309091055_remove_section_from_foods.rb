class RemoveSectionFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :section, :string
  end
end
