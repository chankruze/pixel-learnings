=begin
Finish the method definition below.

customers is an array of hashes, each of which has three keys: "name", "owes" and "debts". "debts" again stores an array of hashes, each of which has three keys: "amount", "date" and "customer".

Given customers and a certain amount, the method should return a list of all debt entries of customers who owe more than amount.
=end

def get_entries(customers, amount)
  customers.filter { |customer| customer[:owes] > amount  }.map { |customer| customer[:debts] }.flatten
end

customers = [
  {
    name: "Alan",
    owes: 30000,
    debts: [
      {
        amount: 10000,
        date: "28-June-2020",
        customer: "Alan"
      },
      {
        amount: 20000,
        date: "30-June-2020",
        customer: "Alan"
      },
      {
        amount: 5000,
        date: "5-July-2021",
        customer: "Alan"
      }
    ]
  },
  {
    name: "Eric",
    owes: 60000,
    debts: [
      {
        amount: 30000,
        date: "28-June-2020",
        customer: "Eric"
      },
      {
        amount: 20000,
        date: "30-June-2020",
        customer: "Eric"
      },
      {
        amount: 10000,
        date: "5-July-2021",
        customer: "Eric"
      }
    ]
  },
  {
    name: "John",
    owes: 90000,
    debts: [
      {
        amount: 45000,
        date: "28-June-2020",
        customer: "John"
      },
      {
        amount: 25000,
        date: "30-June-2020",
        customer: "John"
      },
      {
        amount: 20000,
        date: "5-July-2021",
        customer: "John"
      }
    ]
  },
  {
    name: "Juan",
    owes: 95000,
    debts: [
      {
        amount: 35000,
        date: "28-June-2020",
        customer: "Juan"
      },
      {
        amount: 45000,
        date: "30-June-2020",
        customer: "Juan"
      },
      {
        amount: 15000,
        date: "5-July-2021",
        customer: "Juan"
      }
    ]
  }
]
amount = 35000

get_entries(customers, amount)
