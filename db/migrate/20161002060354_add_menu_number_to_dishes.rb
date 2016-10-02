class AddMenuNumberToDishes < ActiveRecord::Migration
  def change
  	add_column :dishes, :menuItem, :string
  end
end
