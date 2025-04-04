=begin
Finish the method definition below.

codes is an array of bytes. Given codes, the method should return a string containing the characters corresponding to the array of bytes in codes.
=end

def convert_to_string(codes)
  codes.map(&:chr).join
end

