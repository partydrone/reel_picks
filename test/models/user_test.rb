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
end
