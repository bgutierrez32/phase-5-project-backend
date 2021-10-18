class CreateShopServices < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_services do |t|
      t.belongs_to :service, null: false, foreign_key: true
      t.belongs_to :shop, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
