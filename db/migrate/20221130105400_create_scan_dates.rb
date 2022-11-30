class CreateScanDates < ActiveRecord::Migration[7.0]
  def change
    create_table :scan_dates do |t|
      t.references :timeslot, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
