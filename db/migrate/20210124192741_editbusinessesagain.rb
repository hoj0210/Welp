class Editbusinessesagain < ActiveRecord::Migration[5.2]
  def change
    remove_column :businesses, :close
  end
end
