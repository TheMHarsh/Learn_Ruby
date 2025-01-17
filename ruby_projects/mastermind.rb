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
end

code = Code.new("1234")
p code.code_arr
code.display