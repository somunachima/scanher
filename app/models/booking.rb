class Booking < ApplicationRecord
  belongs_to :timeslot
  belongs_to :user
  has_one :result, dependent: :destroy

  has_many_attached :documents

  # validates :reason, :allergies, presence: true
end
