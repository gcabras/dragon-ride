class CreateClaims < ActiveRecord::Migration[7.0]
  def change
    create_table :claims do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dragon, null: false, foreign_key: true
      t.boolean :status, default: true
      t.date :start_date

      t.timestamps
    end
  end
end
