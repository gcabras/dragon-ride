class CreateDragonRidings < ActiveRecord::Migration[7.0]
  def change
    create_table :dragon_ridings do |t|
      t.references :dragon, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
