=begin
Finish the method definition below.

Add the given element value to array list only if it doesn't already exist in the array. The method should then return the updated list.
=end

def add_to_list(list, value)
  # Write your code here
  list << value unless list.include?(value)
  list
end