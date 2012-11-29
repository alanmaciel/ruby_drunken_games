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
    puts "There are #{@players.size} players in @title:"
    
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
  def initialize(name, health=100, score=0)
    @name = name.capitalize
    @health = health
    @score = score
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a #{@score} score."
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


player1 = Player.new("hugo")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

tocho = Game.new("Tocho")
tocho.add_player(player1)
tocho.add_player(player2)
tocho.add_player(player3)
tocho.play

player4 = Player.new("alan", 200)
player5 = Player.new("luis", 200)
player6 = Player.new("gerardo", 200)
player7 = Player.new("magaly", 200)

golypuerta = Game.new("Gol y Puerta")
golypuerta.add_player(player4)
golypuerta.add_player(player5)
golypuerta.add_player(player6)
golypuerta.add_player(player7)
golypuerta.play