class TimeslotsController < ApplicationController
  def index
    @timeslots = Timeslot.all
  end

  def show
    @timeslot = Timeslot.find(params[:id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @timeslot = Timeslot.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @timeslot = Timeslot.new(timeslot_params)
    @timeslot.booking = @booking
    if @timeslot.save
      redirect_to booking_path(@booking)
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
    params.require(:timeslot).permit(:date, :time)
  end
end
