class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :car, null: false, foreign_key: true
      t.belongs_to :shop, null: false, foreign_key: true
      t.integer :total_price
      t.datetime :date

      t.timestamps
    end
  end
end
