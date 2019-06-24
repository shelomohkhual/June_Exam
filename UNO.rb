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

    def create_players #methods to create all the players to start thte games
        @qty_of_bot_player=@qty_of_player-@qty_of_human_player
        self.create_human_player
        self.create_bot_player
    end

    def create_human_player #method to create how many human 
        count=0
        @qty_of_human_player.times do
            name="Human_Player(#{count+1})"
            name=Human_Player.new
            @qty_of_player.push name
            count += 1
        end
    end
    
    def create_bot_player #method to create how many bot player
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
    @holding_cards=[]
    @score=0

end

class Bot_Players #
    @holding_cards=[]
    @score=0
end

class Game
    attr_accessor :players
    def initialize(array_players)
        @players=array_players
        @draw=nil
        @current_card=[]
    end

    def start #this methods is to give each player 7 cards
        @draw=Card.new.uno_cards
        @draw=@draw.shuffle
        @players.each do |player|
            7.times do
                player.holding_cards.push @draw.shift
            end
        end
    end

    def draw(player) # this methods is to draw a card
        player.holding_cards.push @draw.shift
    end

    def show_current_card #this methods is to show current card to match
        puts "Match this : #{@current_card}"
    end

    # def final_score #this should be final show r
    #     puts winner is
    #     show Score_Board
    # end

    def play #this block of code should exeucate all the processs or methos until there's winner 
        self.start
        self.showboard
    end
end

# 

class Uno_Cards 
    attr_accessor :uno_cards
    def initialize
        @uno_cards=[]
        @number_cards=["0","1","2","3","4","5","6","7","8","9",
                        "1","2","3","4","5","6","7","8","9",]
        @special_cards=["Skip","Reverse","+2","Skip","Reverse","+2"]
        @wild_cards="Wild","Wild","Wild","Wild","Wild+4","Wild+4","Wild+4","Wild+4"]
        @colors=["Green","Yellow","Blue","Red"]
        @cards_points={"0"=>0,"1"=>1,"2"=>2,"3"=>3,"4"=>4,"5"=>5,"6"=>6,"7"=>7,"8"=>8,"9"=>9,"Reverse"=>20,"Skip"=>20,"+2"=>20,"Wild"=>50,"+4"=>50}
    end

    def generate_uno_cards #this will help generate UNO cards, wanna seperate methods but no times
        all_cards=@special_cards+@number_cards
        all_cards.each do |card|
            if wild_cards.include? card
                point=cards_point[card]
                card=Card.new(card,point,"Black")
                @uno_cards<<card
            else
                @colors.each do |color|
                    point=cards_point[card]
                    card=Card.new(card,point,color)
                    @uno_cards<<card
                end
            end
        end
    end

end

class Card #this class is like template to create UNO card object with info of  card, point and color
    def initialize(card,point,color)
        @card=name
        @point=point
        @color=color
    end
end

# DONE ----------------------------
class Score_Board #this should show each one of player is finsihed all the cards
    attr_accessor :player_scores, :winner
    def initialize
        @player_scores={|player,scores|player[score]=[]
        @winner=nil
    end

    def show_table_score #this should show all the players with scores
        highest_point=@player_scores.sort_by{|k, v| -v}.to_h
        highest_point.each do |player,scores|
            puts "Player : #{player} | Point : #{point}"
        end
    end

    def winner? #check if there's a winner or not
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

Player.new(qty_of_human_player,qty_of_player)
Player.create_players
# Player.creat_human_player
# Player.creat_bot_player
start_game=Game.new(Player.players)
start_game.play
start_game.final_score

# class Cards
    #     attr_accessor :zero_cards, :one_to_nine_cards, :one_to_nine_points
    #     def initialize 
    #         @zero_cards={"0"=>nil}
    #         @one_to_nine_cards={}
    #         @one_to_nine_points={"0"=>0}
    #     end
    
    #     def generate_one_to_nine_cards
    #         count = 1
    #         9.times do
    #             @one_to_nine_cards["#{count}"]=nil
    #             @one_to_nine_points["#{count}"]=count
    #             count += 1
    #         end
    #     end
    
    #     def match?(card)
    #     end
    # end
    
    # class Special_Cards < Cards
    #     attr_accessor :special_cards,:special_points
    #     def initialize
    #     @special_cards={"Reverse"=>nil,"Skip"=>nil,"+2"=>nil,"Reverse"=>nil,"Skip"=>nil,"+2"=>nil}
    #     @special_points={"Reverse"=>20,"Skip"=>20,"+2"=>20}
    #     end
    # end
    
    # class Wild_Cards < Cards
    #     attr_accessor :wild_cards, :wild_points
    #     def initialize
    #     @wild_cards={"Wild"=>nil,"+4"=>nil,"Wild"=>nil,"+4"=>nil,"Wild"=>nil,"+4"=>nil,"Wild"=>nil,"+4"=>nil}
    #     @wild_points={"Wild"=>50,"+4"=>50}
    #     end
    # end