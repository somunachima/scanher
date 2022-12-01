class ExamsController < ApplicationController

  def new
    @clinic = Clinic.find(params[:clinic_id])
    @timeslot = Timeslot.find(params[:timeslot_id])
    @service_part = ServicePart.find(params[:service_part_id])
    @exam = Exam.new
  end

  def create
    @clinic = Clinic.find(params[:clinic_id])
    
    @service_part = Service.find(params[:service_part_id])
    @exam = Exam.new(exam_params)
    @exam.save
  end

  private

  def exam_params
    params.require(:exam).permit(:price, :clinic_id, :service_part_id)
  end
end
