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
    puts "There are #{@players.size} players in #{@title}:"
    
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      player.blam
      player.w00t
      player.w00t
      puts player
    end
  end
end

class Player
  attr_accessor = :name
  attr_reader = :health
  
  def initialize(name, health=100, score=0)
    @name = name.capitalize
    @health = health
    @score = score
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{@score}."
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
end

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play