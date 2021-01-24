class EditBusinesses < ActiveRecord::Migration[5.2]
  def change
    remove_column :businesses, :open, :close
  end
end
