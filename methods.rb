# Methods

def method1
  puts "Hi"
end
method1

# Methods with arguments
def method2(name)
  puts "Hi #{name}"
end
method2("Harsh")
method2 "Haru"

# convention is to use snake_case for method names and it should start with lower case.
# because names that stat with uppercase are constants in Ruby.

# Default arguments
def method3(name="Harsh")
  "Hi #{name}" # implicit return
end
greeting = method3 # uses default argument
puts greeting

# Explicit return
def method4(name="Harsh", age=19)
  return "Hi #{name}, you are #{age} years old" # explicit return
end
puts method4("Haru", 20)
# explicit return ends the method and returns the value
# Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

# Predicate methods
# Methods that return a boolean value are called predicate methods
# Convention is to end the method name with a question mark
# Example: empty?, include?, odd?, even?

# BANG methods
# Methods that modify the object in place are called bang methods
# Convention is to end the method name with an exclamation mark
# Example: reverse!, upcase!, downcase!

