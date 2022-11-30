class Exam < ApplicationRecord
  belongs_to :clinic
  belongs_to :service_part
end
