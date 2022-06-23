require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get /signup" do
    get '/users/new'
    assert_response :success
   end

   test "should get /login" do
    get '/sessions/new'
    assert_response :success
   end
end
