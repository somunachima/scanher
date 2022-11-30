class TimeslotsController < ApplicationController

  def new
    @exam = Exam.find(params[:exam_id])
    @timeslot = Timeslot.new
  end

  def create
    @exam = Exam.find(params[:exam_id])
    @timeslot = Timeslot.new(timeslot_params)
    @timeslot.save
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:date, :time, :exam_id)
  end
end
