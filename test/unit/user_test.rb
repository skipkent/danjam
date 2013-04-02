require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "user without required name not saved to db" do
    user = User.new
    user.email = "jtestcase@unittest.com"
    assert !user.save, "USER SAVED TO DB WITHOUT REQUIRED NAME"
  end

  test "user without required email not saved to db" do
    user = User.new
    user.name = "jtestcase"
    assert !user.save, "USER SAVED TO DB WITHOUT REQUIRED EMAIL"
  end

  test "user with required email and name saved to db" do
    user = User.new
    name = "jtestcase"
    email = "jtestcase@unittest.com"
    user.name = name
    user.email = email
    assert user.save, "USER WITH REQUIRED FIELDS NOT SAVED TO DB"
    assert User.last.name = name
    assert User.last.email = email
  end
  
end
