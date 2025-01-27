require "test_helper"

class EmailValidatorTest < ActiveSupport::TestCase
  class TestModel
    include ActiveModel::Model
    attr_accessor :email
    validates :email, email: true
  end

  test "recognizes a valid email address" do
    model = TestModel.new(email: "jdoe@example.com")
    assert model.valid?
  end

  test "recognizes an invalid email address" do
    model = TestModel.new(email: "jdoe@example")
    assert_not model.valid?
    assert_equal [ "is not a valid email address" ], model.errors[:email]
  end
end
