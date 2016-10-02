class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.float :rating

      t.timestamps null: false
    end
  end
end
