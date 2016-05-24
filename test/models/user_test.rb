require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:three) 
    @admin_user = users(:one)
    @surveyor = users(:two)
  end

  test "default role is not admin" do
    assert_not @user.admin?
  end


  test "users should be valid" do
    assert @user.valid?
    assert @surveyor.valid?
    assert @admin_user.valid?
  end

  test "users must have email address" do
    @user.email = ""
    assert_not @user.valid?
  end


end
