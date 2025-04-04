=begin
Finish the method definition given below.

states is an array of hashes, each of which has the keys state, capital and official_language. The method should return a new array which is states sorted by their capital names in alphabetical order.
=end

def sort_capitals(states)
#   states.sort{ |state1, state2|  state1[:capital] <=> state2[:capital] }
  states.sort_by { |state| state[:capital] }
end

states = [
    { state: "Manipur", capital: "Imphal", official_Language: 'Meiteilon' },
    { state: "Assam", capital: "Dispur", official_Language: 'Assamese' },
    { state: "Meghalaya	", capital: "Shillong", official_Language: 'English' }
]

puts sort_capitals(states)
