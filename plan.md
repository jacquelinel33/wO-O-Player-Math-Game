# Nouns for classes
- players
  - name
  - lives, default 3
    - minus 1 life if incorrect
  - score - +1 if correct
  - current player - true/false?


- question
  - generate question with two random numbers from 0 - 20
  ran_num1
  ran_num2
  - get input
  - validate input with correct answer

-main/game
 - player 1, player 2
  Player 1 = players.new
  Player 2 = players.new
- initailze with player 1, when round ends switch
- current_player
- instance of question class generate
  Question1 = question.new

while loop while both players are alive
 generate Question1.ask_question
 get user input
 pass user input to Question1.validate
 if true, do nothing, if false, current_player.reduce_life
 check life, if both alive, switch current_player
  if not alive, finish game


- game flow
  player1 question
  get input from player 1
  reply if correct or not
  update score

  new turn

  player2 question
  get input from player 2
  reply if correct or not
  update score

repeat and end game when lives is 0
put final score


while (!gameOver)
  generate questions
  