=begin
Finish the method definition given below.

Given an array of numbers arr, the method should separate the array into 2 sub-arrays: one containing odd numbers, the other containing even numbers. The method should return an array of these two arrays, the even first and odd second. The method should return only the even array if odd array is empty and vice versa.
=end

def split_by_odd_and_even(arr)
  evens = arr.select{ |element| element.even? }
  odds = arr.select{ |element| element.odd? }
  [evens, odds]
end

arr = [2, 3, 7, 6, 2, 4, 9]

puts split_by_odd_and_even(arr)
