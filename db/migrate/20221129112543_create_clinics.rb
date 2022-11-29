class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.string :exam_type
      t.string :body_part
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
