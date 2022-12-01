class Clinic < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :timeslots, through: :exams
end
