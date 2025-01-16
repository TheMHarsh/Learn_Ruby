require 'colorize'
class Grid
  attr_accessor :grid

  def initialize
    @grid = Array.new(3) { |i| Array.new(3) { |j| i * 3 + j + 1 } }
  end

  def display
    grid.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        color = :white
        color = cell == 'X' ? :magenta : color
        color = cell == 'O' ? :cyan : color
        print "#{cell} ".colorize(color) 
        print '| ' if j != 2
      end
      puts
      puts "--+---+--" if i != 2 
    end
    puts
  end

  def move(mover)
    move_location = move_input
    row = ((move_location - 1) / 3)
    col = ((move_location - 1) % 3)
    if ['X', 'O'].include?(grid[row][col]) 
      puts "Can't move there, please make a correct move this time.\n".colorize(:red)
      return move(mover)
    end
    grid[row][col] = mover
  end

  def check_win(mover)
    return unless row_checker(mover) || diagonal_check(mover)
    
    display
    puts "#{mover} won the game".colorize(:green) 
    true
  end

  private
  
  def move_input
    print "Enter which place do you want to change : "
    move_location = gets.to_i
    puts
    unless move_location.between?(1, 9)
      puts "Make a valid selection.\n".colorize(:red)
      return move_input
    end
    move_location
  end
  
  def row_checker(mover)
    flag = false
    grid.each { |row| flag = true if row == [mover, mover, mover] }
    grid.transpose.each { |row| flag = true if row == [mover, mover, mover] }
    flag
  end
  
  def diagonal_check(mover)
    diag1 = (0..2).map { |i| grid[i][i] }
    diag2 = (0..2).map { |i| grid[i][2 - i] }
    [diag1, diag2].any? { |diag| diag == [mover, mover, mover] }
  end
end

module TicTacToe
  def self.gameplay(grid)
    no_win = true
    (0...9).each do |i| 
      player = ['X', 'O'][i % 2]
      puts "#{player}'s chance ->\n".colorize(:yellow)
      grid.display
      grid.move(player)
      return no_win = false if grid.check_win(player)
    end
    no_win
  end

  def self.start
    grid = Grid.new
    no_win = gameplay(grid)
    if no_win 
      grid.display
      puts "Nobody Won!"
    end
    puts 'Game Over, Go Home!'
  end
end

TicTacToe.start