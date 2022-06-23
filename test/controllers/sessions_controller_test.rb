require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

   test "should get /login" do
    get '/sessions/new'
    assert_response :success
   end

   test "should get /user_detail" do
    get '/user_details/show'
    assert_response :success
   end

   test "should get /form_details" do
    get '/user_details/details1'
    assert_response :success
   end

end
