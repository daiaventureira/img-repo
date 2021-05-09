require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
    setup do 
    end

    test "Create a session" do
        post sign_in_path
        assert_equal response.code, "200"
    end

    test "Destroy user session" do 
        delete logout_path(@user)
        assert_redirected_to sign_up_path
    end
end
