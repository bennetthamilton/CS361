# Title: Exercise 1a: Ruby Basics
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date (last edit): 10/3/23
# Description: creates a Player class the has an assigned name and score,
#              fifty Players are created (Player 1 - 50) with randomly assigned
#              scores (10 - 300),  all of which are printed on the screen

# create a Player class
# ref: https://www.tutorialspoint.com/ruby/ruby_classes.htm
# ref: https://stackoverflow.com/questions/14532844/ruby-array-of-objects-classes
class Player

    @@players = Array.new # keep track of all players

    # get all instances of players
    def self.all_players
        @@players
    end

    # initialize name and score members
    def initialize(name, score)
        @player_name = name
        @player_score = score
        @@players << self
    end

    # prints players name and score
    # ref: https://www.rubyguides.com/2018/10/puts-vs-print/
    def print_stats
        puts "Ready "+ @player_name +"! Score: #{@player_score}"
    end
end

# constants
player_range = 1..50
score_range = 10..300

# create an array of 50 players using for loop
# ref: https://stackoverflow.com/questions/14532844/ruby-array-of-objects-classes
# ref: https://www.geeksforgeeks.org/ruby-loops-for-while-do-while-until/
for i in player_range do
    Player.new("Player #{i}", rand(score_range))
end

# print all players in array, showing their names and scores
for player in Player.all_players do
    puts player.print_stats
end