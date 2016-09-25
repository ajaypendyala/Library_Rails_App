class Library < ApplicationRecord
  # attr_accessible :name
  has_many :room
  validates :name , :presence => true

  def to_s
    return self.name
  end
end
