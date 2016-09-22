class Booking < ApplicationRecord
  belongs_to :User
  belongs_to :Room
  validates :User, :presence => true
  validates :Room, :presence => true
  validates :start_time, :presence => true
end
