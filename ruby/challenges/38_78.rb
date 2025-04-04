=begin
Finish the method definition given below.

Given an input string sentence, the method should perform an in-place reversal of all words from the string and return the resultant sentence. In-place reversal means each word of the sentence gets reversed, but the order of the words remains the same.
=end

def reverse_in_place(sentence)
  sentence.split.map{ |word| word.reverse }.join(" ")
end