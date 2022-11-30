class AddDatetimeInTimeslots < ActiveRecord::Migration[7.0]
  def change
    add_column :timeslots, :date, :datetime
  end
end
