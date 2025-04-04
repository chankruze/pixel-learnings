=begin
Finish the method definition given below.

Given a string sentence, the method should determine whether it is a pangram in the lowercase English alphabet, and return true if it is, and false otherwise. Ignore cases while checking.

A pangram is a sentence that contains every letter of the alphabet at least once.
=end

def is_pangram?(sentence)
  sentence.chars.tally.values.sum >= 26
end

sentence = 'The quick brown fox jumps over a lazy dog'

puts is_pangram?(sentence)
