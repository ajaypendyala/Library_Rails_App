class Booking < ApplicationRecord
  belongs_to :User
  belongs_to :Room
  # attr_accessible :room_id, :user_id, :start_time
  validates :User, :presence => true
  validates :Room, :presence => true
  validates :start_time, :presence => true
end
