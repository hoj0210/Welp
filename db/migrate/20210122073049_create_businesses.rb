class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false 
      t.integer :b_zip_code, null: false 
      t.datetime :open, null: false 
      t.datetime :close, null: false 
      t.string :phone_num, null: false 
      t.string :website 
      t.string :price_range, null: false
      t.float :longitude, null: false 
      t.float :latitude, null: false
      t.timestamps
    end
    add_index :businesses, :name, unique: true 
    add_index :businesses, :city, unique: true
  end
end
