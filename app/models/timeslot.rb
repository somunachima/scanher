class Timeslot < ApplicationRecord
  belongs_to :exam
  has_many :bookings, dependent: :destroy

end
