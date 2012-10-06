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
#  puts "#@winner"
#  puts game[1][0]
  return game[1]
else
#puts game[0][0]
  return game[0]
end
end

rps_game_winner(testgame);


my_tournament_full=[
[
[  
  [["Andy","R"],["Kristen","P"]],
  [["Dick","P"],["Maria","S"]],
],
[  
  [["Heather","R"],["Mike","P"]],
  [["Kelly","P"],["Bryan","S"]],
]
],
  
[
[  
  [["Broene","R"],["Jonas","P"]],
  [["Rich","P"],["Jan","S"]]
],
[    
  [["Jim","R"],["MaryAnn","P"]],
  [["Oscar","P"],["Mateo","S"]]
]
]
]

my_tournament=[
[  
  [["Andy","R"],["Kristen","P"]],
  [["Dick","P"],["Maria","S"]],
],
[
  [["Heather","R"],["Mike","P"]],
  [["Kelly","P"],["Bryan","S"]],
]
]

my_short_tourn=[
["Andy", "R"],["Kristen","P"]
]

my_short_tourn2=[
[["Andy", "R"],["Kristen","P"]],
[["Kelly", "P"],["Bryan","S"]]
]


def rps_tournament_winner(tournament)
puts "#{tournament}"
if (tournament[0][1]=~/^[a-zA-Z]$/)
   print "I am at a leaf\n"
   rps_game_winner(tournament)
   #I am at a two person level
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
#   current_winner=rps_game_winner(winner)
end
#puts "The winner is: #{current_winner}"
end 

#puts "The winner is #{@winner}"
#end

#tournament.each do |b|
# puts "operating on this list: #{b}"
#  if (b[0][1]=~/^[a-zA-Z]$/)
#  # identified a leaf game
#  puts "#{b[0][0]} vs #{b[1][0]}"
#  @game_winner=rps_game_winner(b) # we have a winner of the game
#  puts "The winner of this game is: #{@game_winner}" #  @bracket_winners<<@game_winner #  rps_game_winner(b) #  leaf_count=+1 #  puts leaf_count #  else #  rps_game_winner(rps_tournament_winner(b)) #  end
#  puts "Current bracket contains: #{@bracket_winners}" #  if @bracket_winners.length==2 #  @bwn=rps_game_winner(@bracket_winners) #  puts "The winner of this bracket is : #{@bwn}" #  end
#  end
#end

rps_tournament_winner(my_tournament_full)
