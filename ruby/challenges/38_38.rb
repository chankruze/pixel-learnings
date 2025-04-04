=begin
Finish the method definition below.

The method should return the sum of all the numbers that are passed as input to the method. There can be any number of arguments passed to the method.
=end

def sum(*numbers)
  numbers.inject(0) { | sum, num | num + sum }
end

numbers = [3, 4, 5, 10, 8, 12, 23]

puts sum(*numbers)
