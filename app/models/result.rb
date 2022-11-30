class Result < ApplicationRecord
  belongs_to :booking, dependent: :destroy
end
