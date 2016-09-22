class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @booking = Booking.new
    # @booking.user = current_user
  end
end
