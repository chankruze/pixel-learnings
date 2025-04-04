=begin
Finish the method definition given below.

Given a string str, the method should return the most commonly occurring character in the string. If there are 2 or more such characters, then the method should return the character which comes first alphabetically.

The function should consider uppercase and lowercase characters as the same, and the output should be in lowercase.
=end

def most_common_character(str)
  str.downcase.chars.tally.sort.max{ |c1, c2| c1[1] <=> c2[1] }[0]
end

str = "accomplishment"

puts most_common_character(str)
