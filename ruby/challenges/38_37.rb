=begin
Finish the method definition below.

title is a string that contains an issue type and a description of the issue, separated by a colon :. Given title, the method should return the issue type.
=end

def issue_type(title)
  title.split(":").first
end

title = "bug:infinite-spinner-in-home-page"

puts issue_type(title)