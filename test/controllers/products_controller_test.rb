require 'test_helper'


class ProductsControllerTest < ActionDispatch::IntegrationTest
    setup do    
        @product = products(:one)
    
        post sign_in_path, params: {
            email: 'abc@abc.com',
            password: '123'
        }
    end

    def after_teardown
        super
        FileUtils.rm_rf(ActiveStorage::Blob.service.root)
    end

   test "Should return all Images" do     
        get products_path
        assert_equal @response.code, "200"
    end

    test "Create an Image folder" do     
        post products_url, params: {
            product: {
                description: "description"
            }
        }
        assert_redirected_to products_path
    end

    test "Update an Image folder" do
        patch product_path(@product), params: {
            product: {
                description: "description"
            }
        }
        assert_redirected_to products_path
    end
         
    test "Destroy an Image folder" do    
        delete product_path(@product)
        assert_redirected_to products_path
    end

    test "Upload an Image" do
        post products_url,
            params: {
                product: {
                    description: "description",
                    bulk: [fixture_file_upload("pic.jpeg", "image/jpeg")]
                }
              } 
        assert_redirected_to products_path
    end
    

    test "Delete an attachment of a product" do
        delete delete_image_product_path(ActiveRecord::FixtureSet.identify(:attachment))
        assert_redirected_to products_path
    end
end
