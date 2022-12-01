class Service < ApplicationRecord
  has_many :service_parts, dependent: :destroy
  has_many :exams, through: :service_parts
end
