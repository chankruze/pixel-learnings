=begin
Finish the method definition below.

Given an array of hashes expenses, find the total amount spent by the user. Each hash in the array expenses has two keys "spent_on" and "amount".
=end

def total_expense(expenses)
  # Write your code here
  expenses.inject(0) { |result, expense| expense[:amount] + result }
end
