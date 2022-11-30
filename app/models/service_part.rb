class ServicePart < ApplicationRecord
  belongs_to :service
  belongs_to :body_part
  
  has_many :exams

end
