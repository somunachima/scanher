class Clinic < ApplicationRecord
  has_many :exams, dependent: :destroy
  has_many :timeslots, through: :exams

  has_many :bookings, through: :timeslots

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def filtered_exams(params)
    # body_part = params[:exam][:body_part]
    # service = params[[:exam][:service]]
    Exam.where(body_part: params[:exam][:body_part], service: params[:exam][:service], clinic: self)
  end
end
