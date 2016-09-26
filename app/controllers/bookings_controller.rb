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
    session[:booking_id] = @booking.id
    UserMailer.notification_email(@booking.user).deliver_now
    flash[:notice]='Booking created. Admin will review the request.'
    redirect_to ("/invite/")
  end

  def invite

  end

  def invite_send
    @booking = Booking.find(session[:booking_id])
    list_of_email = params[:emails].split(',')
    puts list_of_email.to_s
    UserMailer.invite_email(params(:emails)).deliver_now
    redirect_to "/"
  end

  def booking_params
  	puts params.inspect
    params.require(:booking).permit(:user_id,:room_id,:start_time)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to '/'
  end
end
