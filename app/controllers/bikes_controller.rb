class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.all.find(params[:id])
  end

  # def new
  #   # @booking = Booking.new
  # end

  # def create
  #   @bike = Bike.new
  #   @bike.user = current_user
  #   @bike.save
  #   if @bike.save redirect_to bikes_path else render :new
  # end

  # def edit
  #   @bike = Bike.find(params[:id])
  # end

  # def update
  #   @bike = Bike.find(params[:id])
  #   @bike.update(params[:bike])
  # end

  # def destroy
  #   @bike = Bike.find(params[:id])
  #   @bike.destroy
  # end

end
