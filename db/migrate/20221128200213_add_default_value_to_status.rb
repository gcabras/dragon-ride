class AddDefaultValueToStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :dragon_ridings, :status, :boolean, default: false
  end
end
