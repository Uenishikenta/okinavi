class AddDetailsToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :address, :string
    add_column :hotels, :latitude, :float
    add_column :hotels, :longitude, :float
  end
end
