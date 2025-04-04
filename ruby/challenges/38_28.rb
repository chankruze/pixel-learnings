=begin
Finish the method definition below.

users is an array of hashes. Each hash has the keys "name" and "creditCard", a boolean indicating whether the user has a credit card.

Given users, the method should return true if all users have a credit card, and false otherwise.
=end

def do_all_users_have_credit_card(users)
  users.all? { | user | user[:credit_card] }
end

users = [
  {
    name: "Amy",
    credit_card: true,
  },
  {
    name: "Bandon",
    credit_card: true,
  },
  {
    name: "Maria",
    credit_card: true,
  },
  {
    name: "Rachel",
    credit_card: true,
  },
  {
    name: "Chuck",
    credit_card: true,
  },
  {
    name: "Peter",
    credit_card: true,
  },
  {
    name: "Thomas",
    credit_card: true,
  },
]

puts do_all_users_have_credit_card(users)