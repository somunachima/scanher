class ChatroomsController < ApplicationController

  def show
    @user = current_user
    @booking = Booking.find(params[:booking_id])
    @clinic = @booking.timeslot.exam.clinic
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
