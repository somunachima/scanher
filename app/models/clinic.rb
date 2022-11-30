class Clinic < ApplicationRecord
  has_many :exams, dependent: :destroy
end
