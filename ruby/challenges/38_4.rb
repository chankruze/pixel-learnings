=begin
Finish the method definition below.

Given a string str and another string marker, the method split_string should split the string str with marker and return the array that's generated.

Note: if value of marker is not provided, split_string should return str split by " ".
=end

def split_string(str, marker = nil)
  # Write your code here
  str.split(marker)
end

str = "Michael Clarke Duncan"
marker = " "

puts split_string(str, marker)
