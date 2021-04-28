class Player
  attr_accessor :name, :lives, :current_player

  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduce_life
    @lives -= 1
  end

  def alive?
    @lives > 0
  end 

end


