class CreateCheckboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :checkboxes do |t|
      t.boolean :air_conditioning, default: false
      t.boolean :balcony, default: false
      t.boolean :furnished, default: false
      t.boolean :include_utility, default: false
      t.boolean :near_bus_line, default: false
      t.boolean :smoke_allowed, default: false
      t.boolean :pets_allowed, default: false
      t.boolean :private_bathroom, default: false
      t.boolean :private_bedroom, default: false
      t.boolean :refrigerator, default: false

      t.timestamps
    end
  end
end
