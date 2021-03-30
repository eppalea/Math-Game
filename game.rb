# create 2 players
# update their scores on incorrect answers
# run the game loop
# creates a new turn each time through the loop
# creates a new Question and handles input/output

class Game

  def initialize
    @first_player = Player.new(1)
    @second_player = Player.new(2)
    @current_player = @first_player
    @question = Question.new
  end

  def switch_players
    @current_player = (@current_player == @first_player ? @second_player : @first_player)
  end

  def turn
    puts "--- New Turn ---"
    puts "Player #{@current_player.id}: What does #{@question.num1} and #{@question.num2} equal?"
    print "> "
    guess = gets.chomp.to_i

    if guess == @question.answer
      puts "You got it! Way to go!"
    else 
      puts "No dice! Lose a life."
      @current_player.lose_turn
    end  
  end  
  
  def score
    puts "--- Score ---"
    puts "Player #{@first_player.id}: #{@first_player.score}/3 vs. Player #{@second_player.id}: #{@second_player.score}/3"
  end

  def start
    while @first_player.is_alive? && @second_player.is_alive? do
      turn()
      score()
      switch_players()
    end

    puts "Player #{@current_player.id} win with a score of #{@current_player.score}/3"
    puts "Mahalo, come back and play again soon!"
  end  
end
