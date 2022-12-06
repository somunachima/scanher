class ResultsController < ApplicationController

  def index
    @results = Result.all
  end

  def show
    @result = Result.find(params[:id])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @result = Result.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @result = Result.new(result_params)
    @result.booking = @booking
    if @result.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def result_params
    params.require(:result).permit(:details, :date, documents: [])
  end

end
