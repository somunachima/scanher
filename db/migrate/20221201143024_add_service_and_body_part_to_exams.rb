class AddServiceAndBodyPartToExams < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :service, :string
    add_column :exams, :body_part, :string
  end
end
