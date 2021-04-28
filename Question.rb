require './Player'

class Question
  attr_accessor :answer, :num1, :num2 

  def initialize()
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = num1 + num2
  end

  def ask_question()
    puts "What is #{num1} plus #{num2}?"
    print ">"
  end  

  def validate(input)
   input == answer
  end
end

