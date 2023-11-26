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
    display_players
    # [pretend there's code here]
  end

  def display_players()
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play_game()
    puts "Players in the chess game:"
    @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(Player.new(x, y)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_score()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1
      poker = Poker.new(@player_list)
      poker.play_poker()
      puts poker.get_results()
    when 2
      chess = Chess.new(@player_list)
      chess.play_game()
      puts chess.get_results()
    when 3
      go = Go.new(@player_list)
      go.play()
      puts go.get_score()
    end
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
