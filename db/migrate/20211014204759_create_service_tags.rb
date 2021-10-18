class CreateServiceTags < ActiveRecord::Migration[6.1]
  def change
    create_table :service_tags do |t|
      t.string :service_name
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
