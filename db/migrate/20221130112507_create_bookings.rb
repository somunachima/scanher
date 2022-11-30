class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.text :reason
      t.boolean :previous_exams
      t.text :gp_details
      t.text :allergies
      t.boolean :confirmed
      t.text :additional_information
      t.references :timeslot, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
