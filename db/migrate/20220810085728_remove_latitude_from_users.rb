class RemoveLatitudeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :latitude, :string
  end
end
