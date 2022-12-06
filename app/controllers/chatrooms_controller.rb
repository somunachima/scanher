class ChatroomsController < ApplicationController

  def show
    @user = current_user
    @clinic = Clinic.find(params[:clinic_id])
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.find(params[:id])
  end
end
