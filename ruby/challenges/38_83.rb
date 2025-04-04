=begin
Finish the method definition given below.

Given a string full_name, the method should shuffle the same, i.e the words in the name should be reversed in order and then resultant name should be returned.
=end

def shuffle_name(full_name)
  full_name.split.reverse.join(" ")
end