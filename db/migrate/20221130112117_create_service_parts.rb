class CreateServiceParts < ActiveRecord::Migration[7.0]
  def change
    create_table :service_parts do |t|
      t.references :service, null: false, foreign_key: true
      t.references :body_part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
