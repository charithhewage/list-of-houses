require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users :one
  end

  test "should valid" do
    assert @user.valid?
  end

  test "should have first name" do
    @user.first_name = nil

    assert_not @user.valid?
  end

  test "should have last name" do
    @user.last_name = nil

    assert_not @user.valid?
  end

  test "should have email" do
    @user.email = nil

    assert_not @user.valid?
  end
end
