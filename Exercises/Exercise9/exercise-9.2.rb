# Title: Exercise 9.2: Interfacing
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 12/2/23
# Description: practice using principles learned from POODR chapter 4 (interfacing)

class Player
  attr_reader :name

  def initialize(name, color = nil)
    @name = name
    @color = color
  end

  def color
    @color || "[No color specified]"
  end

  def display
    "#{name}: #{color || '[No color specified]'}"
  end
end

class Score
  def initialize()
    @results = []
  end

  def get_results()
    "[pretend these are poker results]"
  end

end

class Game

  def initialize(players)
    @players = players.map { |params| Player.new(*params) }
    @score = Score.new
  end

  def play
    puts "Players in the game:"
    display_players
    # [pretend there's code here]
    puts score.get_results
  end

  def display_players
    @players.each { |player| puts player.display }
  end

  def score
    @score
  end

end

class Poker < Game
  def initialize(players)
    super(players)
    @hands = @hand = Array.new(players.length)
  end

  def get_player_hand(i)
    @hands[i]
  end
end

class Chess < Game
  # no additional class-specific methods
end

class Go < Game
  # no additional class-specific methods
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    game_class = case @game_number
                 when 1 then Poker
                 when 2 then Chess
                 when 3 then Go
                 end
    play_game(game_class)
  end

  def play_game(game)
    game = game_class.new(@player_list)
    game.play
  end

end

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play()

