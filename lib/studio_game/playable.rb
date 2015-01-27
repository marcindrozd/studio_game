module StudioGame
  module Playable
    def strong?
      true if self.health >= 120
    end

    def blam
      self.health -= 10
      puts "#{self.name} got blammed!"
    end

    def w00t
      self.health += 15
      puts "#{self.name} got w00ted!"
    end
  end
end