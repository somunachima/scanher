class Result < ApplicationRecord
  belongs_to :exam, dependent: :destroy
end
