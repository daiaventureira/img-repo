require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
    setup do 
        post sign_in_path, params: {
            email: 'abc@abc.com',
            password: '123'
        }
    end

    test "Should set current user" do
        get products_path
        assert_equal @response.code, "200"
    end

end
