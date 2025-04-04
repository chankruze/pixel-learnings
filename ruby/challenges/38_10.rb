=begin
Finish the method definition below.

Given two inputs to the method, add should return the result only if both the inputs are numbers.

If both or either one of the inputs is not a number, add should return Invalid Input message.
=end

def add(x, y)
  return x + y if x.is_a? Numeric and y.is_a? Numeric

  "Invalid Input"
end