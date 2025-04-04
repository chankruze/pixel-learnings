=begin
Finish the method definition given below.

students is an array of hashes. Each hash has the keys :name and :marks. Given students and a character character, the method should return filtered array of hashes containing only those students whose name starts with the given character. The name match should be ignore the case.
=end

def matching_name(students, character)
  students.select { |student| student[:name].chars[0].downcase == character.downcase }
end

students = [
  { name: 'Phoebe', marks: 44 },
  { name: 'Ross', marks: 78 },
  { name: 'Monica', marks: 89 },
]
character = 'm'

puts matching_name(students, character)
