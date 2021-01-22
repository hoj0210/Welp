class Editbusinesses < ActiveRecord::Migration[5.2]
  def change
    remove_index :businesses, :name 
    remove_index :businesses, :city 
    add_index :businesses, :name
    add_index :businesses, :city
    add_index :businesses, :phone_num, unique: true
  end
end
