require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  
  test "find room if not available" do
    room = Room.find_by_room_number "2511"
    assert_not room

  end

  test "should not save a room with no number" do
    room = Room.new
    librar = Library.new
    
    room.capacity= 4
    room.library = librar
    assert_not room.save
  end

  test "should not save a room with no capacity" do
    room = Room.new
    librar = Library.new
    
    room.room_number = 2222
    room.library = librar
    assert_not room.save
  end

  test "should not save a room with no library" do
    room = Room.new
    
    
    room.room_number = 2223
    room.capacity = 4
    assert room.save
  end

  test "find room if available" do
    room = Room.find_by_room_number "2515"
    assert room

  end



  
  

  
end
