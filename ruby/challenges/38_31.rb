=begin
Finish the method definition below.

users is an array of hashes. Each hash has the keys "user" and "clicks", a string representing the user's name and a number representing the number of clicks. Given users, the method should return a new array of users sorted by the number of clicks in ascending order.
=end

def sort_users(users)
  users.sort { |user1, user2| user1[:clicks] <=> user2[:clicks] }
end

users = [
  {
    user: "Eric",
    clicks: 430,
  },
  {
    user: "Sam",
    clicks: 220,
  },
  {
    user: "John",
    clicks: 830,
  },
  {
    user: "Amy",
    clicks: 778,
  },
];

puts sort_users(users)