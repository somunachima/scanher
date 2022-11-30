class ClinicsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @clinics = Clinic.all
    @exams = Exam.all
  end

  private

  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)
    @clinic.save
  end

  private

  def clinic_params
    params.require(:clinic).permit(:name, :address)
  end
end
