=begin
Complete the method definition given below.

The method should convert the given string value that is provided in a specific given base current_base to a new base new_base, and return the result as a string.
=end

def convert_base(value, current_base, new_base)
  value.to_i(current_base).to_s(new_base)
end

value = '7B'
current_base = 16
new_base = 10

puts convert_base(value, current_base, new_base)
