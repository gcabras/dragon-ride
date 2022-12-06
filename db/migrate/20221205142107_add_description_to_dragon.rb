class AddDescriptionToDragon < ActiveRecord::Migration[7.0]
  def change
    add_column :dragons, :description, :text
  end
end
