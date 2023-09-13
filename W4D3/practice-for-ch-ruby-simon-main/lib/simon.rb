class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over 
    game_over_message
    reset_game
  end

  def take_turn
 
    if show_sequence == require_sequence
      round_success_message
      self.sequence_length = sequence_length + 1
      return true 
    else 
      game_over = true
      return false
    end 
  end

  def show_sequence
    add_random_color
    seq
  end

  def require_sequence
    input = gets.chomp
    input.split(" ")
  end

  def add_random_color
   seq << %w(red blue yellow green).sample 
   
  end

  def round_success_message
  end

  def game_over_message
  end

  def reset_game
    self.game_over = false
    self.seq = []
    self.sequence_length = 1
    # play
  end
end