=begin
Finish the method definition given below.

Given an input string str in PascalCase, the method should convert the input string from PascalCase to snake_case.
=end

def to_snake_case(str)
  str.gsub(/([A-Z])/, '_\1').downcase.sub(/^_/, '')
end

str = "RubyOnRails"

puts to_snake_case(str)
