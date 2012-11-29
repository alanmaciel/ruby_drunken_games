class Player
  attr_accessor :name
  attr_reader :health, :score
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @score = health + @name.length
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{@score}."
  end
  
  def blam
    @health -= 10
    "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    "#{@name} got w00ted!"
  end
  
  def strong?
    @health > 100
  end
end

if __FILE__ == $0
  player = Player.new("moe")
  puts player
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
  puts player
end




