require "./person"
require "./question"

class Game
  @@game_over = false
  def currentScore(currentPlayer, players)
    puts "#{currentPlayer.name}: #{currentPlayer.displayScore} vs #{players[1].name}: #{players[1].displayScore}"
  end

  def start(players)
    currentPlayer = players[0]

    puts "------New Turn------"
    question = Question.new
    p "#{currentPlayer.name}: #{question.display}"
    print ">"
    playerAnswer = gets.chomp.to_i

    updateScore(currentPlayer, playerAnswer, question.answer, players)
  end

  def updateScore(currentPlayer, playerAnswer, answer, players)
    if(playerAnswer == answer)
      puts "congrats! that was the correct answer!"
      checkScore(currentPlayer, players)
    else
      puts "Nope, not that!"
      currentPlayer.loosePoint
      currentScore(currentPlayer, players)
      checkScore(currentPlayer, players)
    end
  end

  def checkScore(currentPlayer, players)
    if currentPlayer.score < 1
      puts "-----------------"
      puts "dang #{currentPlayer.name} that's it. You've lost."
      puts "#{players[1].name} wins with a score of #{players[1].displayScore}"
      puts "Game over man, Game over"
      puts "-----------------"
      return 
    else 
      players = players.reverse()
      start(players)
    end
  end
end