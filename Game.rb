require './Player'
require './Question'


class Game

  def initialize
    @player1 = Player.new("player1") 
    @player2 = Player.new("player2") 
    @current_player = @player1
  end
  
  def switch 
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
  
  def play
    while (@player1.alive? && @player2.alive?) do
      puts "--- NEW TURN ---"
      question = Question.new
      print "#{@current_player.name}: "
      question.ask_question
      input = gets.chomp.to_i
    
      if question.validate(input)
        puts "YES, you got it!"
        puts "P1: #{@player1.lives}/3 lives. P2: #{@player2.lives}/3 lives."
      else 
        puts "NO! WRONG!"
        @current_player.reduce_life
        puts "P1: #{@player1.lives}/3 lives. P2: #{@player2.lives}/3 lives."
      end

      if @player1.alive? && @player2.alive?
          switch
      else
        puts "--- GAME OVER ---"
     end
    end
  end
end


 

