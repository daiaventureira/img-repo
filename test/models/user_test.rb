require "test_helper"

class UserTest < ActiveSupport::TestCase
 
  test "password must have at least 1 lowercase letter" do
    user = User.new(password: "AA$%%12", email: "daiane@gmail.com")
    assert user.invalid? 
    assert_equal [' must contain at least 1 lowercase '], 
      user.errors[:password]
    assert_equal [], user.errors[:email]
  end

  test "password must have at least 1 uppercase  letter" do
    user = User.new(password: "sjdfh123$", email: "daiane@gmail.com")
    assert user.invalid? 
    assert_equal [' must contain at least 1 uppercase '], 
      user.errors[:password]
    assert_equal [], user.errors[:email]

  end

  test "password must have at least 1 special caracter" do
    user = User.new(password: "asAR133", email: "daiane@gmail.com")
    assert user.invalid? 
    assert_equal [' must contain special character'], 
      user.errors[:password]
    assert_equal [], user.errors[:email]
  end

  test "password must have at least 1 number" do
    user = User.new(password: "asAR$$", email: "daiane@gmail.com")
    assert user.invalid? 
    assert_equal [' must contain at least one number'], 
      user.errors[:password]
    assert_equal [], user.errors[:email]
  end

  test "email cant be blank" do
    user = User.new(password: "abC123$d")
    assert user.invalid? 
    assert_equal ["can't be blank", "must be a valid email address"], 
      user.errors[:email]
    assert_equal [], user.errors[:password]
  end  
end
