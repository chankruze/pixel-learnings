=begin
Finish the method definition given below.

Given two words word and another_word, the method should determine if one is an anagram of another, and return true if so, or false if not. The comparison should ignore cases.

An anagram is a word, phrase, or name formed by rearranging the letters of another, such as spar, formed from rasp.
=end

def is_anagram?(sentence, another_sentence)
  sentence.downcase.split.join("").chars.sort.join("") == another_sentence.downcase.split.join("").chars.sort.join("")
end