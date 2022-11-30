class Service < ApplicationRecord
  has_many :service_parts, dependent: :destroy
end
