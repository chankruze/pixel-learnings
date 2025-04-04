=begin
Complete the method definition below.

Given a string sentence, the method should return an array of all the unique vowels present in the sentence, sorted in alphabetical order and in lowercase. The method should return No Vowels Found, if no vowels are present in the sentence.
=end

# def find_vowels(sentence)
#   vowels = %w[a e i o u]
#   vowels_found = sentence.chars.uniq!.sort.map(&:downcase).filter { |char| vowels.include?(char) }
#   vowels_found.length == 0 ? "No Vowels Found" : vowels_found
# end

def find_vowels(sentence)
  vowels = %w[a e i o u]
  result = vowels.map{ |vowel| vowel if sentence.downcase.count(vowel) > 0 }.compact
  result.length > 0 ? result : "No Vowels Found"
end

sentence = 'Good Morning, have some tea!'

puts find_vowels(sentence)
