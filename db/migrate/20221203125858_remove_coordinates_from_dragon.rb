class RemoveCoordinatesFromDragon < ActiveRecord::Migration[7.0]
  def change
    remove_column :dragons, :longitude
    remove_column :dragons, :latitude
  end
end
