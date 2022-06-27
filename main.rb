require "./person"
require "./game"

class Main
  # create players and set player array
  player1 = Person.new
  player2 = Person.new
  players = [player1, player2]

  # create new game and start it up
  game = Game.new
  game.start(players) 
end

