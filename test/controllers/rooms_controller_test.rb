require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end



   test "should get index" do
    get '/rooms/index'
    assert_response :success
    #assert_not_nil assigns(:rooms)
   end

   test "should get show" do
    get '/rooms'
    assert_response :success
   end


   

end
