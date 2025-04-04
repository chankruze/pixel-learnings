=begin
Finish the method definition given below.

teams is an array of hashes. Each hash has 2 keys, :name and :points, the name of the team and an array of points scored by them. The team with the highest total points is the winning team.

Given teams the method should return a single hash that contains :name and :points of the winning team, along with a new key :total_points that contains the total points of the winning team. Assume that there is only one winning team (no tie).
=end

def find_winning_team(teams)
  winner = teams.sort_by { |team| team[:points].sum }.last
  winner[:total_points] = winner[:points].sum
  winner
end

teams = [
  {
    name: 'Eagles',
    points: [19, 44, 27, 76, 55]
  },
  {
      name: 'Scorpions',
      points: [39, 66, 51, 78, 76]
  },
  {
      name: 'Wolves',
      points: [23, 46, 77, 70, 92]
  }
]