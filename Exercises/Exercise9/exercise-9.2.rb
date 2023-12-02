# Title: Exercise 9.2: Interfacing
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 12/2/23
# Description: practice using principles learned from POODR chapter 4 (interfacing)

class Player
  attr_reader :name

  def initialize(name, color = nil, hand = nil)
    @name = name
    @color = color
    @hand = hand
  end

  def color
    @color || "[No color specified]"
  end

  def hand
    @hands = Array.new(players.length) || '[No hand specified]'
  end

  def display
    "#{name}: #{color || '[No color specified]'} #{hand || '[No hand specified]'}"
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
  end

  def play()
    super
  end

  def display_players()
    @players.each { |player| puts player.display }
  end

  def get_player_hand(player)
    player.hand
  end
end

class Chess < Game
  def initialize(players)
    super(players)
  end

  def play_game()
    super
  end

  def display_players()
    @players.each { |player| puts player.display }
  end

end

class Go < Game
  def initialize(players)
    super(players)
  end

  def play()
    super
  end

  def display_players()
    @players.each { |player| puts player.display }
  end
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1 then play_game(Poker)
    when 2 then play_game(Chess)
    when 3 then play_game(Go)
    end
  end

  def play_game(game)
    game = game_class.new(@player_list)
    game.play
    puts game.score.get_results
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

