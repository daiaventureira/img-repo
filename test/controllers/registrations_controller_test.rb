require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
    setup do 
        @user = users(:one)        
    end
    
    test "Update password" do 
        post sign_up_url(@user) , params: {
            user: {
                password: @user
            }
        }
        
        assert_equal response.code, "200"        
    end


end
