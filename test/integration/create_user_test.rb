# frozen_string_literal: true

class CreateUserTest < ActionDispatch::IntegrationTest
  test 'Should go to new user path and able to create user' do
    get new_user_path

    assert_response :success

    assert_difference 'User.count', 1 do # plus 1 kapag nag execute yung nasa loob, for database to since gagawa ka new user, ma update yung database.
      post create_user_path, params: { user:
                    { first_name: 'Andy', last_name: 'mumble' } }
      assert_response :redirect
    end

    follow_redirect! # ito yung redirect path, si users/path dapat mag success which is yung nasa users_controller_test
    assert_response :success # after mag change ng count dapat ma redirect tyo
  end
end
