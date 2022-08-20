class AddTitleToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :title, :string
  end
end
