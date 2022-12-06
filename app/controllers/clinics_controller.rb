class ClinicsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @search_location = Geocoder.search(params["exam"]["clinic"]["address"])
    @exams = []
    if params[:exam][:body_part] != '' && params[:exam][:service] != ''
      @exams = Exam.where(body_part: params[:exam][:body_part], service: params[:exam][:service])
    end

    @clinics = Clinic.where(id: @exams.pluck(:clinic_id).uniq)
    @timeslot = Timeslot.all
    @markers = @clinics.geocoded.map do |clinic|
      {
        lat: clinic.latitude,
        lng: clinic.longitude
      }
    end
    @clinics = @clinics.sort_by { |clinic| clinic.distance_to(@search_location.first.coordinates) }
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
