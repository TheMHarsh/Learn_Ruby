# Exception handling
# Ruby has a built-in exception handling mechanism. You can use it to handle errors in your code.

# begin and rescue block
def add(a,b)
  begin
    puts a + b
  rescue # catches all exceptions unless specified
    puts "Can't add #{a.class} and #{b.class}"
  end
  
end

add(1,2) # 3
add(1, "2") # Can't add 1 and 2

# You can also specify the type of exception you want to catch.
def divide(a,b)
  begin
    puts a / b
  rescue ZeroDivisionError
    puts "Can't divide by zero"
  rescue TypeError
    puts "Can't divide #{a.class} by #{b.class}"
  end
end
divide(2, 1) # 2
divide(2, "a") # Can't divide 2 by a
divide(2, 0) # Can't divide by zero

# rescue block to store the exception object.
# The exception object contains information about the error that occurred.
def multiply(a,b)
  begin
    puts a * b
  rescue => e # store the exception object in variable e using `=>`
    # here e is an instance of the exception class
    puts "An error occurred: #{e}"
  end
end
multiply(2, "A")

# else block 
# The else block runs when no exception occurs.
def subtract(a,b)
  begin
    puts a - b
  rescue 
    puts "An error occurred"
  else
    puts "No error occurred"
  end
end
subtract(2, 1) # 1 No error occurred
subtract(2, "A") # An error occurred

# ensure block
# The ensure block runs regardless of whether an exception occurs or not.
def modulo(a,b)
  begin
    puts a % b
  rescue ZeroDivisionError
    puts "Can't divide by zero"
  ensure
    puts "This is the ensure block"
  end
end
modulo(2, 1) # 0 This is the ensure block
modulo(2, 0) # Can't divide by zero This is the ensure block

# raise 
# You can raise an exception using the raise keyword.
def not_zero(num)
  if num == 0
    raise "Number can't be zero"
  end
end
# not_zero(0) # Number can't be zero

# You can also raise a specific type of exception.
def not_string(str)
  if !str.is_a? String
    raise TypeError, "Expected a string"
  end
end
# not_string(1) # Expected a string

# retry keyword
def sqrt(num)
  begin
    puts "Square Root of #{num} is #{Math.sqrt(num)}"
  rescue
    puts "Can't find the square root of a negative number #{num}"
    num = num.abs
    retry
  end
end
sqrt(-64) # 8.0