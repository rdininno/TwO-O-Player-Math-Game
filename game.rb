require "./person"
require "./question"
require "./helpers"

class Game
  include Helpers
  def start(players)
    currentPlayer = players[0]

    puts "------New Turn------"
    question = Question.new
    p "#{currentPlayer.name}: #{question.display}"
    print ">"
    playerAnswer = gets.chomp.to_i

    updateScore(currentPlayer, playerAnswer, question.answer)
    currentScore(currentPlayer, players)
    checkScore(currentPlayer, players)
  end

  
end