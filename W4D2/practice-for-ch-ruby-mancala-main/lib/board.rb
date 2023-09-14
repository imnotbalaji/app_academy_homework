require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new()}
    place_stones
  end

  def place_stones
    cups.each_with_index do |cup,index|
      if index != 6 && index !=13
       4.times { cup << :stone}
      end 
   end 
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
   if start_pos >= 0 && start_pos < 14 
      if !cups[start_pos].empty? 
        return true 
      else
        raise "Starting cup is empty" 
      end 
   else 
     raise "Invalid starting cup"
   end 
  end

  def make_move(start_pos, current_player_name)
    # debugger
    # start_index = (1..6).include?(start_pos) ? start_pos - 1 : start_pos
    opposite_player_cup_index = ((0..5).include?(start_pos) ?  13 : 6 )
    # debugger if (0..5).include?(start_pos) 
    
    stones_in_hand = cups[start_pos].dup
    self.cups[start_pos] = []
    next_pos = (start_pos +1)%14
    until stones_in_hand.empty?
      if next_pos != opposite_player_cup_index
          stone  = stones_in_hand.pop
          cups[next_pos].push(stone)
      end 
      next_pos = (next_pos +1)%14
     
    end  


  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end