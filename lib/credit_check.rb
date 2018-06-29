require 'pry'

class CreditCheck 
  
  
  # def something(number)
  #   changed = change_to_array(number)
  #   dbl = doubles_odd_numbers(changed)
  #   added = adds_numbers_greater_than_9(dbl)
  #   totals = totals_entire_number(added)
  #   valid = valid_number?(totals)
  #   binding.pry
  # end
    
  def change_to_array(card_number)
    card_number.to_i.digits
  end
 
  def doubles_odd_numbers(change_to_array)
    doubled = []
    change_to_array.each.with_index do |num, index|
      if index.odd?
        doubled << num * 2
      else 
        doubled << num 
      end 
    end 
    doubled 
  end 
  
  def adds_numbers_greater_than_9(doubles_odd_numbers)
    sum_greater_than_9 = []
    doubles_odd_numbers.each do |number|
      if number > 9
        sum_greater_than_9 << number - 9
      else
        sum_greater_than_9 << number 
      end 
    end 
    sum_greater_than_9
  end 

  def totals_entire_number(adds_numbers_greater_than_9) 
    adds_numbers_greater_than_9.sum 
  end 

  def valid_number?(totals_entire_number)
    if totals_entire_number % 10 == 0
       true
    else 
       false
    end 
  end 

  def validation_output(valid_number)
    if totals_entire_number % 10 == 0
      "The number #{card_number} is valid."
    else 
      "The number #{card_number} is invalid."
    end 
  end 

end

