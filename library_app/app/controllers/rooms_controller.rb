class RoomsController < ApplicationController
  def show
    @rooms = Room.all
  end
end
