class CreateTimeslots < ActiveRecord::Migration[7.0]
  def change
    create_table :timeslots do |t|
      t.date :date
      t.time :time
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
