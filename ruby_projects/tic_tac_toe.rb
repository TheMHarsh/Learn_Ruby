class Grid
  attr_accessor :grid

  def initialize
    @grid = Array.new(3) { |i| Array.new(3) { |j| i * 3 + j + 1 } }
  end

  def display
    grid.each_with_index do |row, i|
      row.each_with_index do |cell, j|
        print "#{cell} " 
        print '| ' if j != 2
      end
      puts
      puts "---------" if i != 2 
    end
    puts
  end

  def move(mover)
    print "Enter which place do you want to change : "
    move_location = gets.chomp.to_i
    puts 
    unless move_location.between?(1,9)
      puts "Make a valid selection."
      move(mover)
      return
    end
    i = ((move_location - 1) / 3)
    j = (move_location % 3) - 1
    if grid[i][j] != 'X' && grid[i][j] != 'O'  
      grid[i][j] = mover
    else
      puts "Can't move there, please make a correct move this time."
      move(mover)
    end
  end

  def check_win(mover)
    if row_checker(mover) || diagonal_check(mover)
      puts "#{mover} won the game" 
      true
    end
  end

  private
  
  def row_checker(mover)
    flag = false
    grid.each { |row| flag = true if row == [mover, mover, mover] }
    grid.transpose.each { |row| flag = true if row == [mover, mover, mover] }
    flag
  end
  
  def diagonal_check(mover)
    flag = false
    i = 0
    diag1 = grid.reduce([]) do |array, element| 
      array.push(element[i])
      i += 1
      array
    end
    j = 2
    diag2 = grid.reduce([]) do |array, element| 
      array.push(element[j])
      j -= 1
      array
    end
    flag = true if diag1 == [mover, mover, mover] || diag2 == [mover, mover, mover]
    flag
  end
end

def tic_tac_toe
  grid = Grid.new
  count = 0
  player = 'X'
  while count < 9
    puts "#{player}'s chance -> \n"
    grid.display
    grid.move(player)
    count += 1
    break if grid.check_win(player)

    if player == 'X'
      player = 'O'
    elsif player == 'O'
      player = 'X'
    end
  end
  if count == 9 
    grid.display
    puts "Nobody Won!"
  end
  puts 'Game Over, Go Home!'
end

tic_tac_toe