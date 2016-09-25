class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  before_save :check_if_booking_possible?

  # attr_accessible :room_id, :user_id, :start_time
  validates :user, :presence => true
  validates :room, :presence => true
  validates :start_time, :presence => true
  def check_if_booking_possible?
  	raise "Booking room in the past is not allowed" if (DateTime.now - 2.hours) > self.start_time
  	raise "Booking cannot be made more than one week in the future" if(DateTime.now + 7.days < self.start_time) 
  	raise "Room not available!" if not self.room.available?(self.start_time) else return true
  end
end
