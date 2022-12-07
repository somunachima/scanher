class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
  has_one :result, dependent: :destroy

  has_many_attached :documents

  validates :reason, presence: true
  validates :previous_exams, presence: true
  validates :allergies, presence: true
end
