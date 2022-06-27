require "./question"
require "./helpers"

class Game
  include Helpers

  def start(players)
    # set current player
    currentPlayer = players[0]
    # create question
    question = Question.new

    puts "------New Turn------"
    p "#{currentPlayer.name}: #{question.display}"
    print ">"
    # player input
    playerAnswer = gets.chomp.to_i

    # call helpers to check the user input against answer and update score
    updateScore(currentPlayer, playerAnswer, question.answer)
    # display current score
    currentScore(currentPlayer, players)
    # check score to see if game is over
    checkScore(currentPlayer, players)
  end
end