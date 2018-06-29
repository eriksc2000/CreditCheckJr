require "minitest/autorun"
require "minitest/pride"
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test 
  
  def test_it_exists
    credit_check = CreditCheck.new
    
    assert_instance_of CreditCheck, credit_check
  end
  
  def test_it_changes_to_array_and_reverses
    credit_check = CreditCheck.new
    credit_card = 4929735477250543
    
    expected = [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4]
    assert_equal expected, credit_check.change_to_array(credit_card)
    end
  
  def test_it_can_double_odd_numbers
    credit_check = CreditCheck.new
    credit_card = [3,4,5,0,5,2,7,7,4,5,3,7,9,2,9,4]
  
    expected = [3,8,5,0,5,4,7,14,4,10,3,14,9,4,9,8]
    assert_equal expected, credit_check.doubles_odd_numbers(credit_card)
  end
  
   def test_it_adds_numbers_greater_than_9
    credit_check = CreditCheck.new
    credit_card = [3,8,5,0,5,4,7,14,4,10,3,14,9,4,9,8]
    
    expected = [3,8,5,0,5,4,7,5,4,1,3,5,9,4,9,8]
    assert_equal expected, credit_check.adds_numbers_greater_than_9(credit_card)  
   end
  
  def test_it_totals_entire_number
    credit_check = CreditCheck.new
    credit_card = [3,8,5,0,5,4,7,5,4,1,3,5,9,4,9,8]
    
    assert_equal 80, credit_check.totals_entire_number(credit_card)
  end
  
  def test_valid_number_is_true
    credit_check = CreditCheck.new
  
    assert_equal true, credit_check.valid_number?(80)
  end 
  
  def test_valid_number_is_false
    credit_check = CreditCheck.new
    
    assert_equal false, credit_check.valid_number?(81)
  end 
  
  def test_validation_output_is_correct
    credit_check = CreditCheck.new 
    
    expected = "The number 4929735477250543 is valid."
    assert_equal expected, credit_check.validation_output(80)
  end 
  
  def test_validation_output_is_incorrect
    skip
    credit_check = CreditCheck.new 
    
    assert_equal "The number #{card_number} is invalid", credit_check.valid_number(81)
  end 
  
end
  
  
