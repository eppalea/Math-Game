# contains player id and score

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

# player1 = Player.new
# puts player1.is_alive?
# puts player1.player_id?
