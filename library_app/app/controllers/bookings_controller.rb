class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @booking = Booking.new
    # @booking.user = current_user
  end

  def show
  	@booking = Booking.all
  end

  def create
  	@booking = Booking.new(booking_params)

        	@booking.save!
        flash[:notice]='Booking created. Admin will review the request.'
        redirect_to ("/rooms/")
  end


  def booking_params
      		params.require(:booking).permit(:Room,:start_time)
  end
end
