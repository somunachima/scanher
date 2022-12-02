class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.integer :price
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
