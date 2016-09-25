class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  # attr_accessible :room_id, :user_id, :start_time
  validates :user, :presence => true
  validates :room, :presence => true
  validates :start_time, :presence => true
end
