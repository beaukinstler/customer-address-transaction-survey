require 'test_helper'

class CatTest < ActiveSupport::TestCase

  def setup
    @cat = cats(:one)
  end

  test "assert initial setup is valid" do
    assert @cat.valid?
  end

  test "no CAT forms fields can be left nil" do 
    assert_not @cat.before_street.nil?
    @cat.before_street = nil
    assert_not @cat.valid?  
  end
end
