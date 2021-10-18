class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
