class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
      t.text :comment
      t.integer :stars
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
