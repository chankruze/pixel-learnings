=begin
Complete the method definition given below.

Given an alphanumeric value alphanumeric as input, the method should return with the sum of all its digits. If no digits are present in input, the method should return false.
=end

def sum_of_digits(alphanumeric)
  # alphanumeric.chars.map{ |x| x.to_i }.sum
  if alphanumeric =~ /\d/
    alphanumeric.to_i.digits.sum
  end
end

alphanumeric = 'james'

puts sum_of_digits(alphanumeric)