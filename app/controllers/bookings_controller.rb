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
  	@booking = Booking.create(booking_params)
    # check if user has bookings in the future

    # check if the room is available for the time given
    @booking.save!
    UserMailer.notification_email(@booking.user).deliver_now
        flash[:notice]='Booking created. Admin will review the request.'
        redirect_to ("/rooms/")
  end


  def booking_params
  	puts params.inspect
    params.require(:booking).permit(:user_id,:room_id,:start_time)
  end
end
