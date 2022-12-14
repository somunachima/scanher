class TimeslotsController < ApplicationController

  def index
    @exams = Exam.all
    @timeslots = Timeslot.all
  end

  def show
    @exam = Exam.find(params[:exam_id])
    @timeslot = Timeslot.find(params[:id])
  end

  def new
    @exam = Exam.find(params[:exam_id])
    @timeslot = Timeslot.new
  end

  def create
    @exam = Exam.find(params[:exam_id])
    @timeslot = Timeslot.new(timeslot_params)
    @timeslot.exam = @exam
    if @timeslot.save
      redirect_to dashboard_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @timeslot = Timeslot.where(current_user.timeslot.id)
  end

  def update
    @timeslot = Timeslot.find(params[:id])
    @timeslot.update(timeslot_params)
    redirect_to dashboard_path(current_user)
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:date, :exam_id)
  end
end
