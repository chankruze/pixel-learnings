=begin
Complete the method definition given below.

Given an array of river names rivers, the method should remove duplicate names, sort them alphabetically and return the final array. In case of an empty array, the method should return false.
=end

def remove_duplicate_and_sort(rivers)
  return false if rivers.empty?
  rivers.uniq!.sort 
end

rivers = []

puts remove_duplicate_and_sort(rivers)