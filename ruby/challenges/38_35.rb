=begin
Finish the method definition below.

issues is an array of hashes. Each hash has the keys "severity", "title" and "assignee".

Given issues, the method should return a hash with the keys as unique values of the severity of the issues, and the values as array of names of assignees with same severity from issues. The result should thereby be issue assignees grouped by their severity.
=end

def group_by_severity(issues)
  hash = Hash.new { |h, k| h[k] = [] }

  issues.each do |issue|
    severity = issue[:severity]
    assignee = issue[:assignee]
    hash[severity] << assignee
  end
  
  hash
end

issues = [
  {
    title: "View is not symmetric",
    severity: "low",
    assignee: "Eric",
  },
  {
    title: "Title color is not as per design",
    severity: "medium",
    assignee: "John",
  },
  {
    title: "Oliver is not able to login",
    severity: "high",
    assignee: "Eric",
  },
  {
    title: "Submit button is disabled",
    severity: "high",
    assignee: "John",
  },
  {
    title: "Table content overflowing",
    severity: "medium",
    assignee: "John",
  }
]

puts group_by_severity(issues)
