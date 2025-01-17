require 'rainbow'
class Code
  attr_accessor :code_arr

  def initialize(input_string)
    @code_arr = input_string.split('').map(&:to_i)
  end

  def display
    color_hash = { 1 => :red, 2 => :orange, 3 => :yellow, 4 => :green, 5 => :blue, 6 => :indigo } 
    @code_arr.each { |number| print "#{Rainbow("  #{number}  ").bg(color_hash[number])} " }
    puts
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

code = Code.new("1234")
code.display
p code.compare([2,3,2,4])