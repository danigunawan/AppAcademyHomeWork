class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    @sequence_length += 1
    unless @game_over
      round_success_message
    end
  end

  def show_sequence
    add_random_color
    p @seq
    if __FILE__ == $PROGRAM_NAME
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    puts "Input sequence"
    user_input = gets.chomp
    unless user_input.split(" ") == @seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "round passed"
  end

  def game_over_message
    puts "You lose"
    puts @seq
  end

  def reset_game
    @game_over = false
    @sequence_length = 1
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  g = Simon.new
  g.play
end
