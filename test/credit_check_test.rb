require "minitest/autorun"
require "minitest/pride"
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test 
  
  def test_it_exists
    credit_check = CreditCheck.new("4929735477250543")
    
    assert_instance_of CreditCheck, credit_check
  end
  
  def test_it_changes_to_array_and_reverses
    credit_check = CreditCheck.new("4929735477250543")
    
    assert_equal [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4], credit_check.change_to_array 
    end
  
  def test_it_can_double_every_other_number
    credit_check = CreditCheck.new("4929735477250543")
    numbers = [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4]
    assert_equal [3,8,5,0,5,4,7,14,4,10,3,14,9,4,9,8], credit_check.doubles_odd_numbers
    end
  
   def test_it_adds_numbers_greater_than_9
    credit_check = CreditCheck.new("4929735477250543")
    numbers = [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4]
    assert_equal [3,8,5,0,5,4,7,5,4,1,3,5,9,4,9,8], credit_check.adds_numbers_greater_than_9  
   end
  
  def test_it_totals_entire_number
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal 80, credit_check.totals_entire_number
  end
  
  def test_it_is_valid
    credit_check = CreditCheck.new("4929735477250543")
    assert_equal true, credit_check.is_card_valid
  end 

end
  
  
