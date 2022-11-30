class CreateClinicServices < ActiveRecord::Migration[7.0]
  def change
    create_table :clinic_services do |t|
      t.integer :price
      t.references :clinic, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
