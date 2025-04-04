=begin
Finish the method integer_ratios:

Given an array of integers, the method should calculate the ratios of its elements that are positive, negative, and zero. For example, if the integers are [1, 0, 2, -1], the ratios of positive, negative and zero integers should be 0.5, 0.25, and 0.25 respectively.

The respective values should be rounded off to have a maximum of 4 decimal digits.
Return the result as a hash with keys :positive_ratio, :positive_ratio and :zero_ratio.
=end

def integer_ratios(integers)
  total_count = integers.size.to_f
  return { positive_ratio: 0.0, negative_ratio: 0.0, zero_ratio: 0.0 } if total_count.zero?
  
  positive_count = integers.count { |num| num > 0 }
  negative_count = integers.count { |num| num < 0 }
  zero_count = integers.count { |num| num.zero? }
  
  {
    positive_ratio: (positive_count / total_count).round(4),
    negative_ratio: (negative_count / total_count).round(4),
    zero_ratio: (zero_count / total_count).round(4)
  }
end
  
integers = [1,2,3,-1,-2,-3,0,0]

puts integer_ratios(integers)
