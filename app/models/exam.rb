class Exam < ApplicationRecord
  belongs_to :user
  belongs_to :clinic
  has_many :results
end
