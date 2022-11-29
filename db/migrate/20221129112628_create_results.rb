class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.text :details
      t.date :date
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
