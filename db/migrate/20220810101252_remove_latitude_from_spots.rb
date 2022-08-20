class RemoveLatitudeFromSpots < ActiveRecord::Migration[6.1]
  def change
    remove_column :spots, :latitude, :string
  end
end
