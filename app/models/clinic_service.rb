class ClinicService < ApplicationRecord
  belongs_to :clinic
  belongs_to :service
end
