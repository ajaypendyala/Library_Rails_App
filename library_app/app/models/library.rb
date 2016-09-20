class Library < ApplicationRecord
  has_many :rooms
  validates :library_id, :presence => true
end
