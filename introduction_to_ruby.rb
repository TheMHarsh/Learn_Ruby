# Typecasting
puts (13/2.0).to_i # float to integer
puts (13/2).to_f # integer to float
puts ("123".to_i) + 2 # string to integer
puts (123.to_s) + "2" # integer to string

# Even and Odd
puts 6.even?
puts 7.odd?

# String to Integer
puts ("123".to_i) + 2

# Concatenation
puts "harsh" + " " + "mishra"
puts "harsh" << " " << "mishra"
puts "harsh".concat(" ").concat("mishra")

# Substrings
puts "harsh".slice(0, 3) # 0 is starting index and 3 is length
puts "harsh"[0, 3] # 0 is starting index and 3 is length
puts "harsh"[-3..-1] # -3 is starting index and -1 is ending index (end inclusive)
puts "harsh"[0...3] # 0 is starting index and 3 is ending index (end exclusive)

# Interpolation
name = "harsh"
puts "My name is #{name}" 

# String Methods

# 1. length
puts "harsh".length 

# 2. reverse
puts "harsh".reverse

# 3. upcase
puts "harsh".upcase

# 4. downcase
puts "HARSH".downcase

# 5. capitalize
puts "harsh".capitalize

# 6. swapcase
puts "HaRsH".swapcase

# 7. strip
puts " harsh ".strip 

# 8. lstrip
puts " harsh ".lstrip

# 9. rstrip
puts " harsh ".rstrip

# 10. include?
puts "harsh".include?("h")

# 11. empty?
puts "harsh".empty?

# 12. split
puts "harsh mishra".split(" ")

# 13. gsub
puts "harsh mishra".gsub("harsh", "harsh123")

# Symbols
# Symbols are immutable and unique
symbol = :"hello world" # any valid identifier can be used as a symbol
puts symbol

# Everything in Ruby is an object and has a return value

# Arrays
# Arrays are ordered, integer-indexed collections of any object

a = [1, 2, 3, 4, 5]
puts a[0]

# Hashes
# Hashes are collections of key-value pairs

h = { "movie1" => 2012, "movie2" => 2004, "movie3" => 2024 }
puts h["movie1"]
puts h["movie2"]
puts h["movie3"]

name = gets.chomp # gets is used to take input from user and chomp is used to remove newline character
puts "Hello #{name}"

NAME = "harshi" # Constants are defined in uppercase
puts NAME

$age = 20 # Global variables are defined with $ sign
puts $age

# puts, print, p and putc
# puts adds a newline character at the end
# print does not add a newline character at the end
# p is used to print the object as it is
# putc is used to print a single character
# puts and print return nil while p returns the value of the object

puts "Hello"
print "Hello"
p "Hello"
putc "H"