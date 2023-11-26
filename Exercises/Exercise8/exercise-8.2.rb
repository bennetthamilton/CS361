# Title: Exercise 8: Refactoring
# Name: Bennett Hamilton
# Username: bennetthamilton
# Date: 11/25/23
# Description: practice using principles learned from Clean Code and POODR 
#              so far to refactor code

class Player
  attr_reader :name

  def initialize(name, color = nil)
    @name = name
    @color = color
  end

  def color
    @color || "[No color specified]"
  end
end

class Poker
  def initialize(players)
    @players = players.map { |name| Player.new(name) }
    @hands = Array.new(players.length)
  end

  def play_poker()
    puts "Players in the poker game:"
    self.display_players
    # [pretend there's code here]
  end

  def display_players()
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
  end

  def get_results()
    "[pretend these are poker results]"
  end

  def get_player_hand(player)
    @hands[@players.index(player)]
  end
end

class Chess
  def initialize(players)
    @players = players.map { |name, color| Player.new(name, color) }
  end

  def play_game()
    puts "Players in the chess game:"
    self.display_players
    # [pretend there's code here]
  end

  def get_results()
    "[pretend these are chess results]"
  end

  def display_players()
    @players.each { |player| puts "#{player.name}: #{player.color}" }
  end

end

class Go
  def initialize(players)
    @players = players.map { |name, color| GoPlayer.new(name, color) }
  end

  def play()
    puts "Players in the go game:"
    self.display_players
    # [pretend there's code here]
  end

  def get_results()
   "[pretend these are go results]"
  end

  def display_players()
    @players.each { |player| puts "#{player.name}: #{player.color}" }
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
    puts game.get_results
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

