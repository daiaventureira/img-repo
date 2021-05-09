require 'test_helper'

class PasswordsControllerTest < ActionDispatch::IntegrationTest
    setup do 
        @user = users(:one)
        post sign_in_path, params: {
            email: 'abc@abc.com',
            password: '123'
        }
    end

    test "Update a password" do 
        patch password_path(@user), params: {
            user: {
                password: @user
            }
        }
        assert_redirected_to "/"
    end


end
