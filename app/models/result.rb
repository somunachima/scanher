class Result < ApplicationRecord
  belongs_to :booking

  has_many_attached :documents

  validates :documents, presence: true
end
