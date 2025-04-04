=begin
Finish the method definition given below.

Given an array of string arr, the method east_or_west should replace 'east' with 'west' in all the strings, and return the resulting array. The 'east' keyword will be present in different formats in each string. The formatting should be maintained post replacement. eg. EasT should become WesT.

Go through the test cases to get a better idea.
=end

def east_or_west(arr)
  arr.map{ |str| str.tr("eaEA", "weWE")}
end

arr = ["east EAST", "e a s t", "E A S T", "eAsT"]

puts east_or_west(arr)
