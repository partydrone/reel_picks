require "test_helper"

class ContestTest < ActiveSupport::TestCase
  setup do
    @contest = Contest.new
  end

  test "requires a title" do
    @contest.title = nil
    assert_not @contest.valid?
  end

  test "has a user" do
    assert_respond_to @contest, :user
  end
end
