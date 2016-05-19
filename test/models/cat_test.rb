require 'test_helper'

class CatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "no CAT forms fields can be left nil" do 
    assert before_street?
    
  end
end
