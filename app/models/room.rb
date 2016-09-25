class Room < ApplicationRecord
  belongs_to :library
  has_many :booking , :dependent => :delete_all
  # has_one :library
  # attr_accessible :room_number, :library_id
  validates :room_number, :presence => true
  validates :room_number, :uniqueness =>true
  validates :capacity, :presence => true
  validates :library, :presence => true


  def to_s
    return self.library.name + ", Room " + self.room_number.to_s
  end

  def available?(start_time = DateTime.now)
  	unless (self.booking.where('start_time between ? and ?', (start_time.to_datetime - 2.hours).to_datetime, (start_time.to_datetime + 2.hours).to_datetime).length > 0) 
  		return true
  	else 
  		return false
  	end
  end
end
