=begin
Finish the method definition given below.

list is an array of words. word is a single word. Given list and word, the method should return an entry from list if it matches word when reversed. It is acceptable even if the match is not case sensitive. If no such match exists, the method should return false.
=end

def reverse_and_match(word, list)
  matches = list.filter { |w| w.downcase.reverse == word }
  return false if matches.length == 0
  matches[0]
end

list = ["read", "dear", "match", "daer"]
word = "read"

puts reverse_and_match(word, list)
