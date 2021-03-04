class EditBusinessesAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :delivery, :boolean
    add_column :businesses, :takeout, :boolean
    add_column :businesses, :outdoor, :boolean
  end
end
