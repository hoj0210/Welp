class CreateBusinessesCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses_categories do |t|
      t.integer :business_id, null: false 
      t.integer :category_id, null: false 
    end
    add_index :businesses_categories, :business_id
    add_index :businesses_categories, :category_id 
  end
end
