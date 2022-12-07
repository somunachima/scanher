class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :dashboard
  def dashboard
    @user = current_user

    if current_user.admin
      @users = User.all.reject{ |user| user.bookings.empty?}
      # @booking = Booking.find(params[:id])
      @bookings = Booking.all
    end
  end

  def photo

  end
end
