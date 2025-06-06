=begin
Finish the method definition given below.

numbers is an array of integers. Given numbers, the method should return a new array with each element converted to its ordinal form (3 becomes 3rd, 2 becomes 2nd, 4 becomes fourth and so on).
=end

# 1 => 1st
# 2 => 2nd
# 3 => 3rd

# 4 => 4th
# 5 => 5th
# 6 => 6th

# 11 => 11th
# 12 => 12th
# 13 => 13th

def make_it_ordinal(numbers)
  numbers.map { |number| ordinalize(number) }
end
  
def ordinal_of(number)
  if (11..13).include?(number % 100)
    "th"
  else
    case number % 10
    when 1; "st"
    when 2; "nd"
    when 3; "rd"
    else "th"
    end
  end
end
  
def ordinalize(number)
 "#{number}#{ordinal_of(number)}"
end

numbers = [1, 2, 3, 4, 5, 6, 7]

puts make_it_ordinal(numbers)
