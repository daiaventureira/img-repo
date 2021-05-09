require 'test_helper'

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
    setup do 
        @user = users(:one)
        post sign_in_path, params: {
            email: 'abc@abc.com',
            password: '123'
        }
    end

    test "Create a reset link" do

        post password_reset_url, params: {
            user: {
                password: @user
            }
        }
        assert_redirected_to sign_in_path
    end



    test "Update a password" do 
        patch password_path(@user), params: {
            user: {
                password: @user
            }
        }
        assert_redirected_to "/"
    end
    test "Edit a password" do 
        get edit_password_url, params: {
            user: {
                password: @user
            }
        }
        assert_equal response.code, "200"
    end

end
