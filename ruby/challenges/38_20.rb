=begin
Finish the method definition below.

For a given list users, print the names of the users who have been vaccinated, separated by a comma and a space ", ". Each items in the list users is a hash with two keys: "name" and "vaccinated" (boolean).
=end

def vaccinated_users(users)
  users.map { |user| user[:name] if user[:vaccinated] }.compact.join(", ").strip
end