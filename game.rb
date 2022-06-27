require "./question"
require "./helpers"

class Game
  include Helpers

  def start(players)
    # set current player
    currentPlayer = players[0]
    question = Question.new

    puts "------New Turn------"
    p "#{currentPlayer.name}: #{question.display}"
    print ">"

    # player input
    playerAnswer = gets.chomp.to_i

    # call in the helpers!
    updateScore(currentPlayer, playerAnswer, question.answer)
    currentScore(currentPlayer, players)
    checkScore(currentPlayer, players)
  end
end