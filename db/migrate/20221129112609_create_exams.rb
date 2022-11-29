class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.text :reason
      t.boolean :previous_exams
      t.text :gp_details
      t.text :allergies
      t.date :date
      t.time :time
      t.boolean :confirmed
      t.text :additional_information
      t.references :user, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
