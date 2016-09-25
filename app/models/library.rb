class Library < ApplicationRecord
  # attr_accessible :name
  has_many :room

  def to_s
    return self.name
  end
end
