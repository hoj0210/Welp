class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :open 
      t.string :close 
      t.integer :business_id, null: false 
      t.string :day 
    end
    add_index :schedules, :business_id
  end
end
