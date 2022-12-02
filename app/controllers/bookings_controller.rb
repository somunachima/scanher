require 'date'
require 'time'

class BookingsController < ApplicationController
  def new
    set_booking
    @timeslot = Timeslot.find(params[:timeslot_id])
    @booking = Booking.new
  end

  def create
    set_booking
    @timeslot = Timeslot.find(params[:timeslot_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # @timeslot = Timeslot.new
    if @booking.save
      redirect_to dashboard_path(current_user), notice: "Your booking has been successful!"
    else
      render template: "bookings/show", status: :unprocessable_entity
    end
  end

  def show
    @timeslot = Timeslot.find(params[:timeslot_id])
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = Booking.all
  end

  # def edit
  #   @booking = Booking.where(current_user.booking.id)
  # end

  # def update
  #   set_booking
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_params)
  #   redirect_to dashboard_path(current_user)
  # end

  def destroy
    set_booking
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(current_user), status: :see_other
  end

  private

  def set_booking
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:reason, :previous_exams, :gp_details, :allergies, :confirmed, :additional_information, :timeslot_id, :user_id)
  end
end
