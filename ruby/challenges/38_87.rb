=begin
Finish the method definition given below.

The method should determine the position of the word "Nemo" and return a string in the following manner: "I found Nemo at [position of the word nemo]!". If there are multiple instance of the word, the method should only return position for the first one. If Nemo is not found, the method should return "I can't find Nemo :(".

The search for Nemo should ignore cases.
=end

def find_nemo(str)
  nemo_index = str.downcase.split(" ").find_index("nemo")
  return "I found Nemo at #{nemo_index + 1}!" if nemo_index
  "I can't find Nemo :("
end

str = 'I nemo am'

puts find_nemo(str)
