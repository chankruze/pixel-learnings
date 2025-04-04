=begin
Finish the method definition given below.

Given an array of 2 numbers arr, the function range_sum should return the sum of all the numbers between and including the range given in the array.
=end

def range_sum(arr)
  min = arr.min
  max = arr.max
  
  (min..max).sum
end