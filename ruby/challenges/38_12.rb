=begin
Finish the method definition below.

The method format_elapsed_seconds should convert the given elapsed number of seconds to a format of hours:minutes:seconds.

For example, given 3670 as input, the output should be 1:1:10. This is because 3670 can be expressed as 1 hour (3600s), 1 minute (60s) and 10 seconds.
=end

def format_elapsed_seconds(elapsed_seconds)
  hours = elapsed_seconds / 3600
  minutes = (elapsed_seconds % 3600) / 60
  seconds = elapsed_seconds % 60
  
  "#{hours}:#{minutes}:#{seconds}"
end

input_values = [3670, 670, 545, 50, 9834]
expected_outputs = ["1:1:10", "0:11:10", "0:9:5", "0:0:50", "2:43:54"]

input_values.each_with_index do |seconds, index|
  result = format_elapsed_seconds(seconds)
  expected = expected_outputs[index]
  
  if result == expected
    puts "Test #{index + 1}: Passed"
  else
    puts "Test #{index + 1}: Failed - Expected #{expected},  got #{result}"
  end
end
