=begin
Finish the method definition given below.

Given two numbers month and year, the method should return the number of days in that month in that year.
=end

require 'date'

def days_count(month, year)
  Date.new(year, month + 1).prev_day.day
end

month = 2
year = 2000

puts days_count(month, year)
