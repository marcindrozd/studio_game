require_relative 'player'
require_relative 'die'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.size} players in #{title}:"
    puts @players
    puts

    @players.each do |player|
      number_rolled = Die.new.roll

      case number_rolled
      when (1..2)
        player.blam
      when (3..4)
        puts "#{player.name} was skipped."
      else
        player.w00t
      end

      puts player
    end
  end
end