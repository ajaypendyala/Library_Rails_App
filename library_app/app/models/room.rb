class Room < ApplicationRecord
  belongs_to :library
  # has_one :library
  # attr_accessible :room_number, :library_id

  def to_s
    return self.library.name + ", Room " + self.room_number.to_s
  end
end
