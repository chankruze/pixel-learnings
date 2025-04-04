=begin
Finish the method definition given below.

Given two sentences sentence and another_sentence, the method should return a list with all the unique words in both sentences.
=end

def unique_words(sentence, another_sentence)
  new_sentence = sentence + " " + another_sentence
  new_sentence.split.uniq
end
