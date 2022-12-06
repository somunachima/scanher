class ClinicsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @exams = Exam.all
    if params[:exam][:body_part] != ''
      @exams = @exams.where(body_part: params[:exam][:body_part])
    end
    if params[:exam][:service] != ''
      @exams = @exams.where(service: params[:exam][:service])
    end
    @clinics = Clinic.where(id: @exams.pluck(:clinic_id).uniq)

    @exam = Exam.new
    @timeslot = Timeslot.all
    @markers = @clinics.geocoded.map do |clinic|
      {
        lat: clinic.latitude,
        lng: clinic.longitude
      }
    end
  end


  private

  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)
    @clinic.save
  end

  def clinic_params
    params.require(:clinic).permit(:name, :address)
  end
end
