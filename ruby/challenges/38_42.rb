=begin
Finish the method definition below.

department_count is an array of hashes where each hash contains "department" and "count" keys, where "count" is the number of people in that particular department.

Given department_count, the method should return the total number of people in all the departments.
=end

def office_strength(department_count)
  department_count.inject(0) { |sum, department| sum + department[:count] }
end

department_count = [
  {
    department: "Development",
    count: 31
  },
  {
    department: "QA",
    count: 29
  },
  {
    department: "Sales",
    count: 10
  },
  {
    department: "Design",
    count: 4
  },
  {
    department: "HR",
    count: 3
  }
]

puts office_strength(department_count)