class AddStarToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :star, :integer
  end
end
