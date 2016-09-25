class Library < ApplicationRecord
  # attr_accessible :name
  has_many :room
  validates :name , :presence => true
  enum name: [ :JamesHunt, :DHHill ]
  def to_s
    return self.name
  end
end
