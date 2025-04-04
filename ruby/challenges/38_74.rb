=begin

=end

def find_longest_word(sentence)
  longest_word = ""
  sentence.split.each { |word| longest_word = word if word.length > longest_word.length } 
  longest_word
end

sentence = 'Built by folks at BigBinary'

puts find_longest_word(sentence)