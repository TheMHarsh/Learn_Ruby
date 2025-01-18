require 'rainbow'
require 'colorize'

module Config
  COLOR_HASH = { 1 => :red, 2 => :orange, 3 => :yellow, 4 => :green, 5 => :blue, 6 => :indigo }.freeze 
  CODE_LENGTH = 4
  TURNS = 10
end

class Code
  include Config
  attr_accessor :code_arr

  def initialize(input_string)
    @code_arr = input_string.split('').map(&:to_i)
  end

  def self.display(input_string)
    input_string.split('').map(&:to_i).each { |number| print "#{Rainbow("  #{number}  ").bg(COLOR_HASH[number])} " }
  end

  def display
    self.class.display(code_arr.join)
  end

  def compare(trial_code)
    trial_code_arr = trial_code.split('').map(&:to_i)
    temp_arr = code_arr.dup
    [same_position(temp_arr, trial_code_arr), wrong_position(temp_arr, trial_code_arr)]
  end

  private

  def same_position(temp_arr, trial_code_arr)
    same_position_count = 0
    index = 0
    while index < temp_arr.length
      if temp_arr[index] == trial_code_arr[index]
        temp_arr.delete_at(index)
        trial_code_arr.delete_at(index)
        same_position_count += 1
        next
      end
      index += 1
    end
    same_position_count
  end
  
  def wrong_position(temp_arr, trial_code_arr)
    wrong_position_count = 0
    index = 0
    while index < temp_arr.length
      number = temp_arr[index]
      trial_index = trial_code_arr.index(number)
      if trial_index
        temp_arr.delete_at(index)
        trial_code_arr.delete_at(trial_index)
        wrong_position_count += 1
        next
      end
      index += 1
    end
    wrong_position_count
  end
end

module Mastermind
  include Config
  def self.start
    instructions
    secret_code = Code.new(random_code_generate)
    # secret_code = Code.new("1234") # for testing
    human_gameplay(secret_code)
    reveal(secret_code)
  end

  def self.random_code_generate
    Array.new(4) { rand(1..6) }.join
  end

  def self.input_guess
    print "Enter your guess code as a sequence of four numbers of the desired colours (ex. 1234) : "
    trial_code = gets.chomp
    puts
    return trial_code if validate_input(trial_code)
    
    input_guess
  end

  def self.validate_input(code)
    code_arr = code.split('').map(&:to_i)
    return true if code_arr.all? { |element| element.to_i.between?(1, 6) } && code_arr.length == CODE_LENGTH
      
    puts "This input is not correct\n".colorize(:red)
  end

  def self.clue_display(clues)
    print "Clues -> #{"\* ".colorize(:magenta) * clues[0]}#{"\* ".colorize(:cyan) * clues[1]}\n"
  end

  def self.check_win(clues)
    if clues[0] == 4
      puts "\n\nCongrats, You Won!".colorize(:green)
      return true
    end
    false
  end

  def self.instructions
    print "The following numbers are associated with the respective colours -> "
    Code.display("123456")
    puts
  end

  def self.reveal(secret_code)
    print "\nThe code was -> "
    secret_code.display
    puts "\n\nGame Over, Go Home"
  end

  def self.human_gameplay(secret_code)
    TURNS.times do |turn|
      puts "\nTurn ##{turn + 1} -> ".colorize(:yellow)
      trial_code = input_guess
      Code.display(trial_code)
      clues = secret_code.compare(trial_code)
      break if check_win(clues)

      clue_display(clues)
      puts "\n#{TURNS} turns completed, You Lost".colorize(:red) if turn == TURNS - 1
    end
  end
end

Mastermind.start