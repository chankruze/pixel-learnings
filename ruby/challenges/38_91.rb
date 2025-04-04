=begin
Finish the method definition given below.

Given an array arr and a number max_length, the method split_array should return an array of arrays in which each sub-array is of maximum max_length length.
=end

def split_array(arr, max_length)
  arr.each_slice(max_length).to_a
end