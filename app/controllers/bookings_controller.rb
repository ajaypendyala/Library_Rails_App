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
    raise "Not allowed to make more than 1 booking" unless @booking.user.can_book_rooms?
    @booking.save
    UserMailer.notification_email(@booking.user).deliver_now
    flash[:notice]='Booking created. Admin will review the request.'
    redirect_to ("/rooms/")
  end


  def booking_params
  	puts params.inspect
    params.require(:booking).permit(:user_id,:room_id,:start_time)
  end
end
