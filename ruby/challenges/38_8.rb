=begin
Finish the method definition below.

Given an hash person with keys first_name and last_name, the method full_name should return a string which combines first_name and last_name separated by a space.

Note:

If the first_name doesn't exist, return just the last_name as the full name
If the last_name doesn't exist, return just the first_name as the full name
If both first_name and last_name don't exist, return "" as the full name.
=end

def full_name(person)
  [person[:first_name], person[:last_name]].compact.join(' ')
end

person = {
  first_name: 'Sherlock',
  last_name: 'Holmes'
}

puts full_name(person)