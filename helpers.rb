module Helpers
  # checks users answer and updates score if incorrect
  def updateScore(currentPlayer, playerAnswer, answer)
    if(playerAnswer == answer)
      puts "congrats! that was the correct answer!"
    else
      puts "Nope, not even close!"
      currentPlayer.loosePoint
    end
  end

  # check the score to see if the game is over
  def checkScore(currentPlayer, players)
    if currentPlayer.score < 1
      puts "----------------------------------"
      puts "DANG! #{currentPlayer.name} that's it... You've lost."
      puts "#{players[1].name} WINS with a score of #{players[1].displayScore}"
      puts "Game over man, Game over!"
      puts "----------------------------------"
      return 
    else 
      # if games not over reverse player array to update current player and start it up again
      players = players.reverse()
      start(players)
    end
  end
    
  def currentScore(currentPlayer, players)
    # display scores after each turn. Logic present to make sure always displaying in the correct order
    if(currentPlayer.name == "Player 1")
      puts "#{currentPlayer.name}: #{currentPlayer.displayScore} vs #{players[1].name}: #{players[1].displayScore}"
    else
      puts "#{players[1].name}: #{players[1].displayScore} vs #{currentPlayer.name}: #{currentPlayer.displayScore}"
    end
  end
end
