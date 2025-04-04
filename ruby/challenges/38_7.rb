=begin
Finish the method definition below.

Given an array arr, the method sum_extremes should return the sum of the first and the last element of arr.

Note: If arr does not contain any element, the method should return 0.
=end

def sum_extremes(arr)
  return 0 if arr.length == 0
  arr[0] + arr[arr.length - 1]
end

arr1 = []
arr2 = [1, 2, 3, 4, 5]

puts sum_extremes(arr1)
puts sum_extremes(arr2)