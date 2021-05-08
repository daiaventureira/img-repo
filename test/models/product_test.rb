require "test_helper"

class ProductTest < ActiveSupport::TestCase
 
  test "image description must not be blank" do 
    product = Product.new
    assert product.invalid?
    assert_equal ["can't be blank"], 
      product.errors[:description]
  end 

end
