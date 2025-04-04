=begin
Complete the method definition given below.

Given an array of numbers scores, the method should return the highest score from scores.
=end

def highest_score(scores)
  scores.max
end

scores = [20, 32, 51, 103, 88, 26]

puts highest_score(scores)
