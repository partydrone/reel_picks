require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = User.new
  end

  test "has a first name" do
    assert_respond_to @user, :first_name
  end

  test "has a last name" do
    assert_respond_to @user, :last_name
  end

  test "requires an email address" do
    @user.email_address = nil
    assert_not @user.valid?
  end

  test "won't allow duplicate emails" do
    @user.email_address = users(:one).email_address
    assert_not @user.valid?
  end

  test "requires a password" do
    @user.password = nil
    assert_not @user.valid?
  end
end
