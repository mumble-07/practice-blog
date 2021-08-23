require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "first_name is required" do
    user = User.new
    user.last_name = 'Aguirre' 
    user.middle_name = 'De Guzman'
    age = 4
    gender = 'Female'

    assert_not user.save
  end
end
