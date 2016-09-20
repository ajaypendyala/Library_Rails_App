class Room < ApplicationRecord
  belongs_to :library
  validates :room_number, :presence => true
  validates_numericality_of :capacity, :message=>"Room size should be numerical"
  validates :library_id, :presence => true


end
