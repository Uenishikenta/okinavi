class AddLatitudToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :latitud, :float
  end
end
