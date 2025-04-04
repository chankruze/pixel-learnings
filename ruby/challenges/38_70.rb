=begin
Finish the method definition given below.

player_stats is a hash of stats of cricket players. Each key is the name of the player and the value is their bowling average.

Given player_stats, the method should return the bowling average of the player with the best bowling average. In cricket, the lower the bowling average is, the better the bowler is performing.
=end

def find_best_bowling_avg(player_stats)
  # Write your code here
  player_stats.value.min
end

player_stats = {
  "Rose Mary": 14.69,
  "Joey Holden": 16.00,
  "Ged Brewer": 15.77
}