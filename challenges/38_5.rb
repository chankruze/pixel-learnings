=begin
Finish the method definition below.

Given an array of numbers arr, the method odd_indexes should return an array of indexes of odd numbers in arr.

Note that you don't need to return the values. You need to return index of the odd values as you can see in the "Expected Output".
=end

def odd_indexes1(arr)
  arr.each_index.select { |i| arr[i].odd? }
end

def odd_indexes2(arr)
  arr.map.with_index { |num, i| i if num.odd? }.compact
end

def odd_indexes3(arr)
  result = []
  arr.each_with_index { |num, i| result << i if num.odd? }
  result
end

arr = [1, 2, 4, 3, 5, 7]

puts odd_indexes1(arr)
puts "----------------"
puts odd_indexes2(arr)
puts "----------------"
puts odd_indexes3(arr)
