class AddPostIdToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :latitd, :float
  end
end
