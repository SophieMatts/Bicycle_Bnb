class BookingsController < ApplicationController

  # CRUD actions (methods) for the bookings controller

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.all.find(params[:id])
  end

  def new
    get_bike
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = get_bike

    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    # @booking.update(end_date: params[:booking][:end_date], start_date: params[:booking][:start_date])
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def get_bike
    @bike = Bike.find(params[:bike_id])
  end

end
