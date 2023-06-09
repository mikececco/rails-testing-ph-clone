require "test_helper"

# test/models/user_test.rb
class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "first_name returns first name" do #test model behaviour
    user = User.new(first_name: "Andy")
    assert_equal "Andy", user.first_name
  end
end
