## CLASSES

Player
Game
Question

## ROLES

Player: The player class will create a new player and initialize their score to 3/3

Game: The game class will start the game off and prompt the player with a question. The player will then enter a number and the game class will check if the answer is correct or not and subtract(or not) the score from the player

Questions: Will generate two random numbers and output a question.

## METHODS
Player: Loosing point - will subtract point when answer is wrong
        Player score  - will show/output the final score

Questions: Will create a question using two randomly created numbers.
           Generate the correct answer
            question {
              num 1: xxx
              num 2: xxx
              answer: 1 + 2
            }

Game: Will start the game
 START METHOD [loop - gets broken when game over is true]
    BEGINNING - WHY NOT game over?
      Boolean game over variable
      decide current player - player array [0]
      promp the player with a question
                * it will create a new question  
                * get input from user
                * check input against answer(from question)

    METHOD UPDATESCORE(current player, player answer, question correct answer)
                * if correct - - will say you are correct
                               - display player scores
                
                * if incorrect - will say you are incorrect
                               - subtract 1 from players total score
                               - display player scores
    RETURN updated score
                
                * check updated score is not 0(< 1) - if its change game over variable to TRUE.


    METHOD CHECK WINNER [call outside game loop]
                * check whos the winner - whose score not zero?
                * if player one score is greater than player two score return player one. => print player one is winner
                * else if (opposite)
                * else nill => print game tie - no winner
    END
  END

                  
                * With two players we could just reverse the players array after each turn and keep using the player at [0] index
                
