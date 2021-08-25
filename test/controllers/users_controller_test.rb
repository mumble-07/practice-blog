require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "Should go to /users path" do
    get users_path

    assert_response :success
  end

  test "should go to /users/new path" do
    get new_user_path

    assert_response :success
  end

  test "Should redirect to  /users path after user create" do
    post create_user_path params: {user: 
                    {first_name: 'Andy', last_name: 'mumble'}}
    
    assert_response :redirect
  end

end
