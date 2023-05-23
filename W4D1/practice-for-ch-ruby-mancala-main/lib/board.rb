require "byebug"
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    cups.each_with_index do |cup,i|
      4.times {cup << :stone} unless i == 6 || i == 13
    end
  end

  def valid_move?(start_pos)
    # debugger
    raise "Invalid starting cup" unless ((0..5).to_a + (7..12).to_a).include?(start_pos)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    store = []
    until cups[start_pos].empty?
      store.push(cups[start_pos].pop)
    end

    i = 1
    # until store.empty?
    #   if current_player_name == @name1
    #     # debugger
    #     cups[start_pos + i].push(store.pop) unless (start_pos+1) % 14 == 13
    #   else
    #     cups[start_pos + i].push(store.pop) unless (start_pos+1) % 14 == 6
    #   end
    #   i += 1
    # end

    render

    next_turn(cups[start_pos+i])

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