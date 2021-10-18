class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :year
      t.string :make
      t.string :model
      t.boolean :insurance

      t.timestamps
    end
  end
end
