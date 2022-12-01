class RemoveServicePartIdFromExams < ActiveRecord::Migration[7.0]
  def change
    remove_reference :exams, :service_part, null: false, foreign_key: true
  end
end
