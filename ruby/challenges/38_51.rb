=begin
Complete the method definition given below.

Given an integer count, increment the same by 1 and add it to the present count value. Continue the same till count value reaches maximum count. The method should return the final sum.

Note:

The count should increment atleast once irrespective of the maximum count.
Order matters: You need to first increment count, and then get the sum.

ie, for (count = 2): 2 + 1 = 3; 2 + 3 = 5
=end

def increment_count(count, maximum_count)
  sum = 0
  count += 1
  sum += count

  if count < maximum_count
    sum += increment_count(count, maximum_count)
  end

  sum
end

count = 3
maximum_count = 7

puts increment_count(count, maximum_count)

