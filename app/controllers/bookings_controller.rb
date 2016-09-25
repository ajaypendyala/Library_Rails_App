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

        	@booking.save!
    UserMailer.notification_email(@booking.User).deliver_now
        flash[:notice]='Booking created. Admin will review the request.'
        redirect_to ("/rooms/")
  end


  def booking_params
  	        puts params.inspect
      		params.require(:booking).permit(:User_id,:Room_id,:start_time)
  end
end
