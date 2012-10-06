class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
testgame=[["Andy","R"],["Kristen","P"]]

def rps_result(m1, m2)
@m0=m1.downcase
@m1=m2.downcase
hash_rps={
  'rr'=> 0,
  'rp'=> 1,
  'rs'=> 0,
  'pr'=> 0,
  'pp'=> 0,
  'ps'=> 1,
  'sr'=> 1,
  'sp'=> 0,
  'ss'=> 0
}
index=@m0+@m1
return hash_rps[index];
end

def rps_game_winner(game)

raise WrongNumberOfPlayersError unless game.length==2

game.each do |player,move|
raise NoSuchStrategyError unless "#{move}"=~/R|P|S/i
end

@winner=rps_result(game[0][1].to_s, game[1][1].to_s)
#puts "And the winner is => #{@winner}"

if @winner==1
  puts "#@winner"
  puts game[1]
  return game[1]
else
  puts game[0]
  return game[0]
end
end

rps_game_winner(testgame);





def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end
