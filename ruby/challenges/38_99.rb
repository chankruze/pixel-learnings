=begin
Finish the method definition given below.

Given multiple number arguments, the method sum_dig_prod shoud add the numbers passed as arguments. It should then multiply the digits of this sum until the product is only 1 digit long and return the final product as the result.

For example: sum_dig_prod(16, 28) ➞ 6
16 + 28 = 44
4 * 4 = 16
1 * 6 = 6
=end

def sum_dig_prod(*n)
  sum = n.reduce(:+)
  
  while sum >= 10 do
    sum = sum.to_s.chars.map(&:to_i).reduce(:*)
  end
  
  sum
end

n = [8, 16, 89, 3]

puts sum_dig_prod(*n)
