require_relative "player"

describe Player do

  before do
    $stdout = StringIO.new # makes sure that puts results are not printed to the console
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end

  it "has a capitalized name" do
    @player.name.should == "Larry"
  end

  it "has an initial health" do
    @player.health.should == 150
  end

  it "has a string representation" do
    @player.to_s.should == "I'm Larry with a health of 150 and a score of 155."
  end

  it "computes a score as the sum of its health and length of the name" do
    @player.score.should == 155
  end

  it "increases health by 15 when w00ted" do
    @player.w00t

    @player.health.should == @initial_health + 15
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    @player.health.should == @initial_health - 10
  end

  context "player with initial health of 150" do
    before do
      $stdout = StringIO.new # makes sure that puts results are not printed to the console
      @initial_health = 150
      @player = Player.new("larry", @initial_health)
    end

    it "is a strong player" do
      @player.should be_strong
    end
  end

  context "player with initial health of 100" do
    before do
      $stdout = StringIO.new # makes sure that puts results are not printed to the console
      @initial_health = 100
      @player = Player.new("larry", @initial_health)
    end

    it "is a wimpy player" do
      @player.should_not be_strong
    end
  end

  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end

end
