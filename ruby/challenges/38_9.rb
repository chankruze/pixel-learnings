=begin
Finish the method definition below.

Given two inputs to the method, add should return the result as the sum of two input values.

Note: add should return the result even if the inputs passed are strings.
=end

def add(x, y)
  x.to_i + y.to_i
end

x = "100"
y = 20

puts add(x, y)
