=begin
Finish the method definition given below.

arr is a array of arrays, in which each subarray has few numbers. Given arr, the method should sort and return the array in such a way that the subarrays are ordered by their sums in descending order.
=end

def order_by_sum(arr)
  arr.sort_by { |sub_array| sub_array.sum }.reverse
end