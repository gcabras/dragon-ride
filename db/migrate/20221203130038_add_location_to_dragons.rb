class AddLocationToDragons < ActiveRecord::Migration[7.0]
  def change
    add_reference :dragons, :location, foreign_key: true
  end
end
