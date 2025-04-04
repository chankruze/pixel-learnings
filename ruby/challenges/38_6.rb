=begin
Finish the method definition below.

Given a hash obj and a key k, the method property should return the value of key k from hash obj.
=end

def property(obj, k)
  obj[k.to_sym]
end

obj = {
  name: "Oliver",
  hobby: "Writing"
}
k = "name"

puts property(obj, k)