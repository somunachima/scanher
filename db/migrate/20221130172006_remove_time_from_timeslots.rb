class RemoveTimeFromTimeslots < ActiveRecord::Migration[7.0]
  def change
    remove_column :timeslots, :time, :time
    remove_column :timeslots, :date, :date
  end
end
