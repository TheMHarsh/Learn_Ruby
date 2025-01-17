require 'rainbow'
require 'colorize'
class Code
  attr_accessor :code_arr

  @@color_hash = { 1 => :red, 2 => :orange, 3 => :yellow, 4 => :green, 5 => :blue, 6 => :indigo } # rubocop:disable Style/ClassVars

  def initialize(input_string)
    @code_arr = input_string.split('').map(&:to_i)
  end

  def display
    code_arr.each { |number| print "#{Rainbow("  #{number}  ").bg(@@color_hash[number])} " }
  end

  def self.display(input_string)
    input_string.split('').map(&:to_i).each { |number| print "#{Rainbow("  #{number}  ").bg(@@color_hash[number])} " }
  end

  def compare(trial_code_arr)
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
  def self.start
    secret_code = Code.new(random_code_generate)
    # secret_code = Code.new("1234") # for testing
    print "The following numbers are associated with the respective colours -> "
    Code.display("123456")
    puts
    10.times do |turn|
      puts "\nTurn ##{turn + 1} -> \n\n"
      trial_code = input_guess
      Code.display(trial_code)
      trial_code_arr = trial_code.split('').map(&:to_i)
      clues = secret_code.compare(trial_code_arr)
      break if check_win(clues)

      clue_display(clues)
    end
    print "\nThe code was -> "
    secret_code.display
    puts "\n\nGame Over, Go Home"
  end

  def self.random_code_generate
    rand(1..6).to_s + rand(1..6).to_s + rand(1..6).to_s + rand(1..6).to_s 
  end

  def self.input_guess
    print "Enter your quess code as a sequence of four numbers of the desired colours (ex. 1234) : "
    trial_code = gets.chomp
    puts
    return trial_code if validate_input(trial_code)
    
    input_guess
  end

  def self.validate_input(code)
    code_arr = code.split('').map(&:to_i)
    return true if code_arr.all? { |element| element.to_i.between?(1, 6) } && code_arr.length == 4
      
    puts "This input is not correct\n"
  end

  def self.clue_display(clues)
    print "Clues -> #{"\* ".colorize(:magenta) * clues[0]}#{"\* ".colorize(:cyan) * clues[1]}\n"
  end

  def self.check_win(clues)
    if clues[0] == 4
      puts "\n\nCongrats, You Won!\n"
      return true
    end
    false
  end
end

Mastermind.start