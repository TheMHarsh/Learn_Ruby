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
    choice = side_chooser
    secret_code = choice == 1 ? Code.new(random_code_generate) : Code.new(secret_code_input)
    human_gameplay(secret_code) if choice == 1
    computer_gameplay(secret_code) if choice == 2
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

  def self.check_win(clues, player)
    if clues[0] == 4
      puts "\n#{'Congrats, ' if player == 'Human'}#{player} Won!".colorize(:green)
      return true
    end
    false
  end

  def self.instructions
    print "The following numbers are associated with the respective colours -> "
    Code.display("123456")
    puts "\n\nThe game will be played for #{TURNS} turns\n\n"
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
      break if display_clue_comparison(trial_code, secret_code, 'Human', turn)
    end
  end

  def self.side_chooser
    print "Who will be the codemaker? (1) Computer (2) Human : "
    choice = gets.chomp.to_i
    return side_chooser unless [1, 2].include?(choice)

    choice
  end

  def self.secret_code_input
    print "Enter the secret code as a sequence of four numbers of the desired colours (ex. 1234) : "
    trial_code = gets.chomp
    puts
    return trial_code if validate_input(trial_code)
    
    secret_code_input
  end
 
  def self.computer_gameplay(secret_code)
    array = Array.new(6) { |i| i + 1 }
    clues = [0, 0]
    trial_code_arr = Array.new(CODE_LENGTH, 0)
    all_fit = false
    permutation = []
    TURNS.times do |turn|
      puts "\nTurn ##{turn + 1} -> ".colorize(:yellow)
      index = clues[0] + clues[1]
      if index < CODE_LENGTH
        trial_code_arr = generate_trial_code(trial_code_arr, array, index)
      else
        permutation, trial_code_arr = handle_permutations(permutation, trial_code_arr, clues, all_fit)
        all_fit = true     
      end

      trial_code = trial_code_arr.join
      break if display_clue_comparison(trial_code, secret_code, 'Computer', turn)

      clues = secret_code.compare(trial_code)
    end
  end

  def self.generate_trial_code(trial_code_arr, array, index)
    random_number = array.sample
    array.delete(random_number)
    (index...CODE_LENGTH).each do |i|
      trial_code_arr[i] = random_number
    end
    trial_code_arr
  end

  def self.handle_permutations(permutation, trial_code_arr, clues, all_fit)
    permutation = trial_code_arr.permutation.to_a if all_fit == false
    possible_sol = Code.new(trial_code_arr.join)
    temp_arr = permutation.select { |perm| possible_sol.compare(perm.join) == clues }
    trial_code_arr = temp_arr.sample
    [temp_arr, trial_code_arr]
  end

  def self.display_clue_comparison(trial_code, secret_code, player, turn)
    Code.display(trial_code)
    clues = secret_code.compare(trial_code)
    clue_display(clues)
    sleep(1) if player == 'Computer'
    return true if check_win(clues, player)

    puts "\n#{TURNS} turns completed, #{player} Lost".colorize(:red) if turn == TURNS - 1
  end
end

Mastermind.start