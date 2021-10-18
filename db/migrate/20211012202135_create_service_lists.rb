class CreateServiceLists < ActiveRecord::Migration[6.1]
  def change
    create_table :service_lists do |t|
      t.belongs_to :appointment, null: false, foreign_key: true
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
