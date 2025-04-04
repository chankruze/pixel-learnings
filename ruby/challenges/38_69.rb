=begin
Finish the method definition given below.

ticket_lot is an array of hashes of lottery tickets. Each hash has keys :id and :name, the id of the ticket and the owner's name.

Given ticket_lot, chose the winner whose ticket id is divisible by 113. If there are more than 1, then try 251, 376 and 401 in that order. There will at least be one ticket that matches the winning logic.
=end

def choose_winner(ticket_lot)
  divisor_frequency = [113, 251, 376, 401]
  divisor_frequency.each do |divisor|
    winner = ticket_lot.select { |lot| lot[:id] % divisor == 0 }
    # pass and iterate to next divisor if there are multiple winners 
    return winner[0][:id] if winner && winner.length == 1
  end
end

ticket_lot = [
  {
    id: 8421,
    name: 'Kendall Gordon',
  },
  {
    id: 1356,
    name: 'Chase Walton',
  },
  {
    id: 2599,
    name: 'Nadia Ali',
  }
]

puts choose_winner(ticket_lot)
