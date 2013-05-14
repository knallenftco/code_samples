class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

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

if @winner==1
  return game[1]
else
  return game[0]
end
end


def rps_tournament_winner(tournament)
puts "#{tournament}"
if (tournament[0][1]=~/^[a-zA-Z]$/)
   print "I am at a leaf\n"
   rps_game_winner(tournament)
else
   puts "left half is : #{tournament[0]}"
   puts "right half is : #{tournament[1]}"
   left_winner=rps_tournament_winner(tournament[0])
   puts "the left half winner is: #{left_winner}"
   right_winner=rps_tournament_winner(tournament[1])
   puts "the right half winner is:  #{right_winner}"
   winners = [left_winner,right_winner]
   puts "the winners bracket is:  #{winners}"
   winner=rps_game_winner(winners)
   puts "#{winner}"
   rps_game_winner(winners)
end
end 
