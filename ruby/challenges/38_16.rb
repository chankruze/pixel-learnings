=begin
Finish the method definition below.

Check whether a given key property does exist in the hash obj and return true. Otherwise, return false.
=end

def property_exists?(obj, property)
  # Write your code here
  obj.key?(property.to_sym)
end

obj = {
  id: 1,
  user_name: "oliver_smith",
  name: "Oliver Smith",
}
property = "user_name"

property_exists?(obj, property)
