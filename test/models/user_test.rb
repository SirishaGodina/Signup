require './test/test_helper'

class UserTest < ActiveSupport::TestCase
  
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(email: 'john@example.com', password: 'xxxxxx', password_confirmation: 'xxxxxx')
  end

  test "should not save a project without email" do
    @user.email = nil
    refute @user.valid?, 'saved user without an email'
    assert_not_nil @user.errors[:name], 'no validation error for email present'
  end

  test "should not save a project without password" do
    @user.password = nil
    refute @user.valid?, 'saved user without a password'
    assert_not_nil @user.errors[:password], 'no validation error for password present'
  end

  test "should not save a project without password_confirmation" do
    @user.password_confirmation = nil
    refute @user.valid?, 'saved user without a password confirmation'
    assert_not_nil @user.errors[:password], 'no validation error for password confirmation present'
  end

 end
