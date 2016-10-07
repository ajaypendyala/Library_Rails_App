require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


   # open index
   test "should get index" do
    get '/rooms/index'
    assert_response :success
    #assert_not_nil assigns(:rooms)
   end
  
  
    #open show.html.erb
   test "should get show" do
    get '/rooms'
    assert_response :success
   end
  
   # searching rooms with start_time
   test "should be able to search with start time" do
    get :index, {"booking_params" => "start_time", "query" => "10-18-2016 12:00 pm"}
    assert_response :success
    assert_equal 1, assigns(:rooms).length
   
   end
  
   #searching with room number
   test "should be able to search with room" do
    get :index, {"booking_params" => "room_id", "query" => "1025"}
    assert_response :success
    assert_equal 1, assigns(:rooms).length
   
   end
  
   # searching with userid  
   test "should be able to search room with user" do
    get :index, {"booking_params" => "user_id", "user1"}
    assert_response :success
    assert_equal 1, assigns(:rooms).length
   
   end


  
  
  
end
