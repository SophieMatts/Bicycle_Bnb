class BookingsController < ApplicationController


  # CRUD actions (methods) for the bookings controller

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.all.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    redirect_to bookings_path if @booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to restaurants_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :bike_id)
  end

end
