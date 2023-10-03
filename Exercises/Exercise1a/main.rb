# Title: Exercise 1a: Ruby Basics
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date (last edit): 10/3/23
# Description: creates a Player class the has an assigned name and score,
#              fifty Players are created (Player 1 - 50) with randomly assigned
#              all of which are printed on the screen

# create a Player class
# ref: https://www.tutorialspoint.com/ruby/ruby_classes.htm
class Player

    # initialize name and score members
    def initialize(name, score)
        @player_name = name
        @player_score = score
    end

    # prints players name and score
    # ref: https://www.rubyguides.com/2018/10/puts-vs-print/
    def print_player_stats
        puts "Ready #{@player_name}! Score: #{@player_score}"
    end
end

# create an array of 50 players


# print all players in array, showing their names and scores