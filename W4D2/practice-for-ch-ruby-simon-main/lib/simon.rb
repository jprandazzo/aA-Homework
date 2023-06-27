require "byebug"
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    # debugger
    user_input = require_sequence
  
    #why doesn't this work??
    return @game_over = true unless user_input == seq
    # unless user_input == seq
    #   return game_over = true
    # end
    #   round_success_message
    #   @sequence_length += 1
    
    #this is needed
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    system "clear"
    sleep(1)
    p "enter the colors in order"
    sleep(2)
    system "clear"
    seq.each do |e|
      p e
      sleep(1)
      system "clear"
      p "---"
      sleep(1)
      system "clear"
    end
  end

  def require_sequence
    p "separate with a single space:"
    return gets.chomp.split(" ")
  end

  def add_random_color
    seq.push(COLORS[rand(3)])
  end

  def round_success_message
    p "nice, try a harder one"
    sleep(2)
    system "clear"
  end

  def game_over_message
    p "oopsie"
  end

  def reset_game
    # debugger
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

s = Simon.new
s.play