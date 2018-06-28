card_number = "4929735477250543"

class CreditCheck 
    
  def change_to_array(card_number)
    card_number.to_i.digits
  end
  
  def doubles_odd_numbers(change_to_array)
    change_to_array.map.with_index do |num, index|
      if index.odd?
        num * 2
      else
        num
      end
    end
  end 
  
  def adds_numbers_greater_than_9(doubles_odd_numbers)
    sum_greater_than_9 = doubles_odd_numbers.map do |number|
      if number > 9
        number - 9
      else
        number 
      end 
    end 
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
  
  # def validation_output(card_number)
  #   if totals_entire_number % 10 == 0
  #     "The number #{card_number} is valid."
  #   else 
  #     "The number #{card_number} is invalid."
  #   end 
  # end 
  
end
