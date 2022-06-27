module Helpers
  def updateScore(currentPlayer, playerAnswer, answer)
    if(playerAnswer == answer)
      puts "congrats! that was the correct answer!"
    else
      puts "Nope, not that!"
      currentPlayer.loosePoint
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
    
  def currentScore(currentPlayer, players)
    if(currentPlayer.name == "Player 1")
      puts "#{currentPlayer.name}: #{currentPlayer.displayScore} vs #{players[1].name}: #{players[1].displayScore}"
    else
      puts "#{players[1].name}: #{players[1].displayScore} vs #{currentPlayer.name}: #{currentPlayer.displayScore}"
    end
  end
end
