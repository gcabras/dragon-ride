class DropDragonRiding < ActiveRecord::Migration[7.0]
  def change
    drop_table :dragon_ridings
  end
end
