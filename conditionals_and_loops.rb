# Conditionals 
print "Enter your name : "
name = gets.chomp
if name.downcase == "harsh"
  puts "Hello Harsh, you are the best!"

  print "Enter your age : "
  age = gets.chomp.to_i
  if age > 20
    puts "Hi future Harsh"
  elsif age == 20
    puts "Hi current Harsh"
  else
    puts "Hi past Harsh"
  end

else
  puts "Get away imposter #{name}"
end

# Unlike other languages, even an empty string is considered as true in Ruby

# .eql? and .equal? are two different methods in Ruby
# .eql? checks if the value and type of the two objects are same
# .equal? checks if the two objects are the same object

a = "harsh"
b = "harsh"
puts a.eql? b # true
puts a.equal? b # if a and b were integers, it would be true because integers are stored in memory as the same object

# Spaceship operator <=>
# Returns 0 if first operand equals the second
# Returns 1 if first operand is greater than the second
# Returns -1 if first operand is less than the second

puts 5 <=> 10 # -1
puts 10 <=> 10 # 0
puts 10 <=> 5 # 1

# Case statement 
age = 19

advice = case age
  when 0..17 # 0 to 17 inclusive
    then "Live while you can"
  when 18
    then "Be mindful where you step from here"
  when 18..Float::INFINITY # Float::INFINITY is a constant in Ruby
    puts "Rest in Peace"
    "#{age} is a pesky age"
end

puts advice

# unless statement
# unless is the opposite of if 
# It executes the code if the condition is false
unless age < 18
  puts "Smash"
else
  puts "Pass"
end

# Ternary operator
# condition ? true : false
# If the condition is true, the code after ? is executed
puts age > 18 ? "Smash" : "Pass"

# Loops

# loop do
i = 0  
loop do # infinite loop
  i += 1
  puts i
  if i == 5
    break # breaks out of the loop
  end
end

# while loop
while i < 10
  i += 2
  puts i
end

# until loop
# until is the opposite of while
# It executes the code until the condition is true
until i == 20
  i += 3
  puts i
end

# for loop
for i in 1..5
  puts i
end

# times loop
5.times do |i|
  puts "hi #{i}"
end

# each loop
mult = 1
(1..5).each do |i|
  mult *= i
end
puts mult

# upto and downto methods
# upto method
1.upto(5) do |i|
  puts i
end

# downto method
5.downto(1) do |i|
  puts i
end