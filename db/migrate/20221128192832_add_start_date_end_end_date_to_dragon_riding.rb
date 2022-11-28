class AddStartDateEndEndDateToDragonRiding < ActiveRecord::Migration[7.0]
  def change
    add_column :dragon_ridings, :start_date, :date
    add_column :dragon_ridings, :end_date, :date
  end
end
