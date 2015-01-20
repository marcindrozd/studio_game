class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def score
    @health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

puts player1.health
puts player2.health
puts player3.health

player2.name = "Lawrence"

puts player2.name
puts player2