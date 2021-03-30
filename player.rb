class Player

  attr_reader :id, :score

  def initialize(id)
    @id = id
    @score = 3
  end  

  def lose_turn
    @score -= 1
  end

  def is_alive?
    @score > 0
  end 
end  
