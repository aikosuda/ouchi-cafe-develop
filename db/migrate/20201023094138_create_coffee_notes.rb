class CreateCoffeeNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_notes do |t|

      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :shop
      t.integer :price
      t.integer :quontity
      t.string :producing_area
      t.integer :condition, null: false, default: 0
      t.integer :roasting_degree, null: false, default: 0
      t.string :image_id
      t.string :comment
      t.float :rate
      t.integer :acidity, null: false
      t.integer :scent, null: false
      t.integer :sweetness, null: false
      t.integer :bitter_taste, null: false
      t.integer :rich, null: false
      t.integer :status, null: false, default: 1, limit: 1

      t.timestamps
    end
  end
end
