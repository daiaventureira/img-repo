require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
    setup do 
        post sign_in_path, params: {
            email: 'abc@abc.com',
            password: '123'
        }
    end

    test "Get user session" do 
        get sign_in_path 

        assert_equal response.code, "200"
    end
end
