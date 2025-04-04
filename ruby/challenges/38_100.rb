=begin
Finish the method definition given below.

Given three number arguments min, max and digit, the method digit_count should count the number of times digit occurs in the numbers that are in the range (inclusive) from min to max and then return the count.

Example:

digit_count(51, 55, 5) ➞ 6
[51, 52, 53, 54, 55] : 5 occurs 6 times
=end

def digit_count(min, max, digit)
  count = (min..max).to_a.join.to_s.chars.tally[digit.to_s] ||= 0
  count
end

min = 51
max = 55
digit = 5

puts digit_count(min, max, digit)
