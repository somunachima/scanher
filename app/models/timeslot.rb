class Timeslot < ApplicationRecord
  belongs_to :exam
  has_many :bookings
end
