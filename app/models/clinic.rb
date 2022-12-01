class Clinic < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :timeslots, through: :exams
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
