=begin
Finish the method definition below.

data is a hash. Given data, and a key and value, the method should assign value to key in data if key is not already assigned a value. Do not assign value to key if key is empty in data.

The method should then return the updated hash.
=end

def update_data(data, key, value)
  data[key.to_sym] = value unless data.key?(key.to_sym)
  data
end

data = {
  name: "Alex",
  location: "Kochi",
}
key = "age"
value = 30

puts update_data(data, key, value)
