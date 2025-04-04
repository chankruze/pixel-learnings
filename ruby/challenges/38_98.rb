=begin
Finish the method definition given below.

Sherlock considers a string to be valid if all characters of the string appear the same number of times. It is also valid if he can remove just a single character at a single index in the string, and the remaining characters occur the same number of times.

Given an input string str, the method is_valid? should return true if the string is a valid Sherlock string and false if its not.

For example, if str = "abc", the string is valid because the frequencies of characters are all the same.
If str = "abcc", the string is also valid, because we can remove 1 "c" and have one of each character remaining in the string.
However, if str = "abccc", the string is not valid, because removing one character does not result in the same frequency of characters.
=end

def is_valid?(str)
  frequency_hash = str.chars.tally
  length_of_keys = frequency_hash.keys.length
  sum_of_values = frequency_hash.values.sum
  sum_of_values % length_of_keys <= 1 ? true : false
end

str = 'aabbccddeefghi'

# for n distinct keys => x(n) + 1

puts is_valid?(str)
