class RemoveAddressFromDragon < ActiveRecord::Migration[7.0]
  def change
    remove_column :dragons, :address
  end
end
