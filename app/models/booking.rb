class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  before_save :check_if_booking_possible?
  # attr_accessible :room_id, :user_id, :start_time
  validates :user, :presence => true
  validates :room, :presence => true
  validates :start_time, :presence => true
  protected
  def check_if_booking_possible?
  	unless self.room.available?(self.start_time)
  		raise 'Room Not Available'
  	end
  end
end
