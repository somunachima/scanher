class Result < ApplicationRecord
  belongs_to :booking, dependent: :destroy

  has_many_attached :documents
end
