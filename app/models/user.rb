class User < ApplicationRecord
  rolify
  has_many :Booking , :dependent => :delete_all
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def to_s
    return self.email
  end

  def can_book_rooms?
  	return false if self.Booking.where("start_time > ?", DateTime.now - 2.hours).length>0 else return true
  end

end
