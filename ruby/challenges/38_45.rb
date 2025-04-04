=begin
Complete the method definition given below.

word is a scrambled word that contains capital letters in alphabetical order. sample_dictionary is an array of words that might contain the original word, for which word is a scrambled version (letters sorted alphabetically).

Given word and sample_dictionary, the method should return the original word if it is in sample_dictionary. If not, the method should return false.
=end

def solve_jumble_words(word, sample_dictionary)
  sorted_word = word.downcase.chars.sort.join
  result = false
  
  sample_dictionary.each do |sample_word|
    if sorted_word == sample_word.downcase.chars.sort.join
      result = sample_word
      break
    end
  end
  
  result
end