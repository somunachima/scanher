class ScanDate < ApplicationRecord
  belongs_to :timeslot
  belongs_to :clinic
end
