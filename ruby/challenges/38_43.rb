=begin
Finish the method definition below.

value is a string that may contain a hexadecimal value in it. Given value, the method should return the decimal value of the hexadecimal value. If value does not contain a hexadecimal value, the method should return 0.
=end

def find_hex_number(value)
  value.split.first.to_i(16)
end

value = 'nothinghere bits'

puts find_hex_number(value)
