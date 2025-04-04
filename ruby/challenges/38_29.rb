=begin
Finish the method definition below.

list is an array of items, each of which is an array of numbers. Given list, the method should return a new array of sums of the numbers in each array in list.
=end

def sum(list)
  list.map { |arr| arr.sum }
end

list = [[3, 4], [10, 20], [12, 13], [14, 17], [19, 20]]

puts sum(list)