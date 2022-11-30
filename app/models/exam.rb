class Exam < ApplicationRecord
  belongs_to :clinic
  belongs_to :service_part
  has_many :timeslots, dependent: :destroy
end
