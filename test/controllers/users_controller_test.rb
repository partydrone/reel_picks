require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "creates a new user with valid parameters" do
    assert_difference("User.count") do
      post users_path, params: {
        user: {
          first_name: "John",
          last_name: "Doe",
          email_address: "jdoe@example.com",
          password: "password",
          password_confirmation: "password"
        }
      }
    end
  end

  test "returns an error for a user with invalid parameters" do
    skip "Add a test for invalid user parameters"
  end
end
