=begin
Finish the method definition below.

users is an array of hashes, each of which has two keys: "name" and "device". The method should return names of all users who have a MacBook device, separated by a comma and a space ", ".

If the user's device contains the string MacBook, (case insensitive), then the user is considered to have a MacBook.
=end

def macbook_users(users)
  # Write your code here
  users.filter { |user| user[:device].downcase.include?("macbook") }.map{ |user| user[:name] }.join(", ").strip
end

users = [
  {
    name: "Lindsay",
    device: "MacBook Pro 13",
  },
  {
    name: "Peter",
    device: "MacBook",
  },
  {
    name: "Victoria",
    device: "MacBook Pro 15",
  },
  {
    name: "Erica",
    device: "Dell",
  },
  {
    name: "Clark",
    device: "macbook pro 13",
  }
]

puts macbook_users(users)
