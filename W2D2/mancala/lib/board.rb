require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new(0) }
    place_stones
    @player1 = name1
    @player2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    [*(0..5),*(7..12)].each do |cup|
      4.times { @cups[cup] << :stone }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless [*(1..5),*(7..12)].include?(start_pos)
  end

  def make_move(start_pos, current_player_name)
    start_pos -= 1 if start_pos.between?(1,6)
    stones = @cups[start_pos].dup
    @cups[start_pos] = []
    place_pos = start_pos
    until stones.empty?
      render
      place_pos = (place_pos + 1) % 14
      place_pos = (place_pos + 1) % 14 if current_player_name == @player1 && place_pos == 13
      place_pos = (place_pos + 1) % 14 if current_player_name == @player2 && place_pos == 6
      @cups[place_pos] << stones.pop
    end
    render
    # byebug
    next_turn(place_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if [6, 13].include?(ending_cup_idx)
    return :switch if @cups[ending_cup_idx].length == 1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[7..12].all? { |cup| cup.empty? }
    return true if @cups[0..5].all? { |cup| cup.empty? }
    false
  end

  def winner
    player1_points = @cups[6].length
    player2_points = @cups[13].length
    if player1_points > player2_points
      @player1
    elsif player2_points > player1_points
      @player2
    else
      :draw
    end
  end
end
