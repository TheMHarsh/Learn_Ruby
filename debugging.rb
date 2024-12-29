# Debugging

# Pry-byebug is like IRB but better. It allows you to pause your code and inspect it.
require 'pry-byebug' # require the gem i.e. the library

def array_multiplication(arr, num)
  arr.map do |element|
    res = element * num
    binding.pry # pause the code execution here
    res
  end
end

array = [1, 2, 3, 4, 5]
number = 10
puts array_multiplication(array, number)

# Usage of Pry-byebug
# 1. require 'pry-byebug' at the top of the file
# 2. Add binding.pry where you want to pause the code
# 3. Run the file
# 4. You will see a prompt where you can inspect the code
# 5. Type exit to continue the code execution
# 6. Check variables, methods, etc. using the prompt.
# Example:
# [1] pry(main)> element
# => 1
# [2] pry(main)> res
# => 10
# Type exit! to exit the prompt and continue the code execution.