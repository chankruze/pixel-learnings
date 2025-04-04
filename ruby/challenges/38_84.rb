=begin
Finish the method definition given below.

Given two arrays array and another_array the method should return a new array containing all the elements of array that are also present in another_array. If either one of the arrays are empty, the method should return the non-empty array. If both arrays are empty, or there are no common elements, the method should return an empty array.
=end

def common_elements(array, another_array)
  return array if another_array.empty?
  return another_array if array.empty?
  array & another_array
end