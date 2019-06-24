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

############################### OOP - CODE ############################### 
# DONE ----------------------------
class Player
    attr_accessor :players, :qty_of_player, :qty_of_human_player,:qty_of_bot_player
    def initialize(qty_of_human_player,qty_of_player))
        @players=[]
        @qty_of_player=qty_of_player
        @qty_of_human_player=qty_of_human_player
        @qty_of_bot_player=0

    end

    def create_players
        @qty_of_bot_player=@qty_of_player-@qty_of_human_player
        self.create_human_player
        self.create_bot_player
    end

    def create_human_player
        count=0
        @qty_of_human_player.times do
            name="Human_Player(#{count+1})"
            name=Human_Player.new
            @qty_of_player.push name
            count += 1
        end
    end
    
    def create_bot_player
        count=0
        @qty_of_bot_player.times do
            bot="Bot_Player(#{count+1})"
            bot=Bot_Player.new
            @qty_of_player.push bot
            count += 1
        end
    end

end

class Human_Player
    @holding_cards=

end

class Bot_Player

end

class Game
    attr_accessor :players
    def initialize(array_players)
        @players=array_players
    end

    def showboard
    end

    def final_score
        puts winner is
        show Score_Board
    end
end

class Cards
end

# DONE ----------------------------
class Score_Board
    attr_accessor :player_scores, :winner
    def initialize
        @player_scores={|player,scores|player[score]=[]}
        @winner=nil
    end

    def show_table_score
        highest_point=@player_scores.sort_by{|k, v| -v}.to_h
        highest_point.each do |player,scores|
            puts "Player : #{player} | Point : #{point}"
        end
    end

    def winner?
        @player_scores.each do |player,scores|
            if scores.sum > 100
                @winner=player
                return true
            else nil
            end
        end
        return false 
    end
end

    
############################### DRIVER - CODE ############################### 

puts "how many player?"
qty_of_player=gets.chomp.to_i

puts "how many human_player?"
qty_of_human_player=gets.chomp.to_i

qty_of_bot_player=qty_of_player-qty_of_human_player

Player.new(qty_of_human_player,qty_of_player)
Player.create_players
# Player.creat_human_player
# Player.creat_bot_player
start_game=Game.new(Player.players)
start_game.final_score



