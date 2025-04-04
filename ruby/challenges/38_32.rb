=begin
Finish the method definition below.

users is an array of hashes. Each hash has the keys "user" and "phone", a string representing the user's phone number. The method should return phone numbers of all users separated by a comma and a space ", ".
=end

def phone_numbers(users)
  users.map { |user| user[:phone] }.join(", ").strip
end

users = [
  {
    user: "Eric",
    phone: "202-555-0164",
  },
  {
    user: "Sam",
    phone: "202-555-0164",
  },
  {
    user: "John",
    phone: "202-555-0143",
  },
  {
    user: "Amy",
    phone: "202-555-0143",
  },
];
puts phone_numbers(users)