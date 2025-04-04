=begin
Finish the method definition below.

Given an array of numbers list, and another number divisor, the method should return true if all the values in the array are multiples of divisor, and false otherwise.
=end

def elements_divisible?(list, divisor)
  list.all? { |num| num % divisor == 0 }
end

list = [2, 4, 3, 6]
divisor = 2