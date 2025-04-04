=begin
Complete the method definition given below.

Given two inputs a and b, the method should convert a and b to floating point numbers and add them together. Then, it should return the result rounded to exactly 2 decimal points.
=end

def add(a, b)
  (a.to_f + b.to_f).round(2)
end

a = 0.205
b = 0.312

puts add(a, b)
