require "./person"
require "./question"

class Game
  @@game_over = false

  def start(players)
    currentPlayer = players[0]

    puts "------New Turn------"
    question = Question.new
    p "#{currentPlayer.name}: #{question.display}"
    print ">"
    playerAnswer = gets.chomp.to_i

    if (playerAnswer == question.answer)
      puts "congrats! that was the correct answer!" 
    else
      puts "Nope, not that!"
      players = players.reverse()
      start(players)
    end  
  end
end

player1 = Person.new
player2 = Person.new

players = [player1, player2]
game = Game.new
game.start(players)