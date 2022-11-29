class Clinic < ApplicationRecord
  belongs_to :user
  has_many :chatrooms
  has_many :exams
end
