=begin
Finish the method definition given below.

Given a string str, the method absolute_reverse should take a string and return the reversed string.

However there are a few rules to follow in order to make the challenge interesting:

The UPPERCASE/lowercase positions must be kept in the same order as the original string.
Spaces must be kept in the same order as the original string.
Take a look at the test cases for examples.
=end

def absolute_reverse(str)
  letters = str.delete(' ').chars.reverse
  puts letters
  str.gsub(/\S/) { |character| find_case(character, letters) }
end
  
def find_case(character, letters)
  ('A'..'Z').include?(character) ? letters.shift.upcase : letters.shift.downcase
end

str = 'UPPER lower'

puts absolute_reverse(str)
