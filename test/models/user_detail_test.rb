require './test/test_helper'

class UserDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
       @user_detail = UserDetail.new(first_name: 'Sirisha', last_name: 'Godina', bank_account_no: '1234343255', user_id: 1)
  end

  test "should not save a project without a first_name" do
    
    @user_detail.first_name = nil
    refute @user_detail.valid?, 'saved user without first name'
    assert_not_nil @user_detail.errors[:first_name], 'no validation error for first name present'
   end

   test "should not save a project without a last name" do
    
    @user_detail.last_name = nil
    refute @user_detail.valid?, 'saved user without last name'
    assert_not_nil @user_detail.errors[:last_name], 'no validation error for last name present'
   end

   test "should not save a project without a bank account" do
    
    @user_detail.bank_account_no = nil
    refute @user_detail.valid?, 'saved user without bank account'
    assert_not_nil @user_detail.errors[:bank_account_no], 'no validation error for bank account present'
   end
end
