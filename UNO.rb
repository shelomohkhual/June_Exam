############################### PSEUDOCODE ############################### 
# Ask how many player
# how many human

# * Player.new(huam,Qty-human)
# - player create give amount of human player and bots
# - - add to Player.players

# * start_game=Game.new(Player.players)
# - game randomly give each player 7cards each and the left over set to DRAW
# - - randomly choose card From DRAW to start, except special cards
# - - -until someone_score hit 100points repead the game
# - - - - until someone finished cards, each player take turn, show each process
# - - - - - if shown card is color or num, match or not, if match next player, else errors repeat input
# - - - - - else call each special cards methods and process as it is
# - - - - - - Reverse, Draw_two, Skip, Wild, Wild_Draw_Four
# - if someone finished, show finisher and show all players left over cards and sum to finshers score
# - and show back the scoreboard and reset everything excep the scores.

    
class Score_Board

class Game
end

class Player
end
class Human_Player < Player

end
class Bot_player < Player

end

############################### DRIVER - CODE ############################### 
puts "how many player?"
qty_of_player=gets.chomp.to_i

puts "how many human_player?"
qty_of_human_player=gets.chomp.to_i

qty_of_bot_player=qty_of_player-qty_of_human_player

Player.new(qty_of_human_player,qty_of_player)
Player.creat_human_player
Player.creat_bot_player
start_game=Game.new(Player.players)
start_game.final_score



