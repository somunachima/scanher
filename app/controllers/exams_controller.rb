class ExamsController < ApplicationController

  def new
    @clinic = Clinic.find(params[:clinic_id])
    @service = Service.find(params[:service_id])
    @exam = Exam.new
  end

  def create
    @clinic = Clinic.find(params[:clinic_id])
    @service = Service.find(params[:service_id])
    @exam = Exam.new(exam_params)
    @exam.save
  end

  private

  def exam_params
    params.require(:exam).permit(:price, :clinic_id, :service_id)
  end
end
