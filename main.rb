require "./person"
require "./game"

class Main
  player1 = Person.new
  player2 = Person.new

  players = [player1, player2]

  game = Game.new
  game.start(players) 
end

