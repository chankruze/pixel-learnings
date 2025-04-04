=begin
Complete the method given below.

Given a credit card number card_number as input string, the method should delete any spaces if they exist, and then return the remaining credit card number with only the last 4 digits displayed and the rest masked with *.

In order to solve this problem you would need to use rjust. To see how rjust works click here.
=end

def mask_credit_card_number(card_number)
  cleaned_number = card_number.delete(' ')  
  last_four = cleaned_number[-4..-1]        
  last_four.rjust(cleaned_number.length, '*')
end
  
card_number = '5555 5555 5555 4444'

puts mask_credit_card_number(card_number)
  