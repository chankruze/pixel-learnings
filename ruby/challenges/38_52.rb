=begin
Complete the method definition given below.

Return an array without any values, but of a given length length.
=end

def create_array(length)
  # Array.new(length)
  (1..length).map { nil }
end

length = 12

puts create_array(length)
