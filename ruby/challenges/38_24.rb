=begin
Finish the method definition below.

issues is an array of hashes, each of which has three keys: "severity", "title", and "assignee". Given issues and a string severity, the method should return the filtered array out of issues, that have the same severity as severity.
=end

def filter_issues(issues, severity)
  issues.filter { |issue| issue[:severity] == severity }
end