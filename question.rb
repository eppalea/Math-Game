# generates 2 random numbers
# accepts a guess and returns true/false

class Question

  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
  end

  def player_guess
    print "> "
    guess = $stdin.gets.chomp.to_i
  end

  def answer
    @num1 + @num2
  end  
end
