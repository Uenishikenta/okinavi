class AddLatitudeToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :latitude, :string
  end
end
