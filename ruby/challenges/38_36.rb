=begin
Finish the method definition below.

Given a number n, the method should return the sum of all odd numbers from 1 to n.
=end

def sum_of_odd_numbers(n)
  (1..n).to_a.filter { |num| num.odd? }.sum
end

n = 100

puts sum_of_odd_numbers(n)