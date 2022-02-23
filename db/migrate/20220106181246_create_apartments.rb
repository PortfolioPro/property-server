class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.integer :unit
      t.integer :rooms
      t.integer :rent
      t.references :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
