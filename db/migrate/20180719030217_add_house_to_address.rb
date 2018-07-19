class AddHouseToAddress < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :house, foreign_key: true
  end
end
