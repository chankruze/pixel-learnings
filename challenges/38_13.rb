=begin
Finish the method definition below.

get_property should extract and return the value of given key from a given hash object and return Not found if property is not found.
=end

def get_property(object, property)
  return "Not found" unless object.keys.include?(property.to_sym)

  object[property.to_sym]
end

def get_property2(object, property) 
  object.key?(property.to_sym) ? object[property.to_sym]: "Not found"
end


obj = {
  name: "Oliver",
  age: 28,
  address: "Main Street, New York, NY10030",
}
property = "name"

puts get_property(obj, property)