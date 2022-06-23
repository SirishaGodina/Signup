require "test_helper"

class UserDetailsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get /form1" do
    get '/user_details/details1'
    assert_response :success
   end

   test "should get /form2" do
    get '/user_details/details2'
    assert_response :success
   end

   test "should get /user_detail" do
    get '/user_details/show'
    assert_response :success
   end
end
