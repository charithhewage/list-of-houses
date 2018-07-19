class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :rent, null: false
      t.integer :deposit
      t.text :description

      t.timestamps
    end
  end
end
