class CreateCarLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :car_locations do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
