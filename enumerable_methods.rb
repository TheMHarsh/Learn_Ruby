# Enumerable Methods
# Enumerable methods are methods that can be called on a collection of items, such as an array or a hash. 
# 

# Basic Enumerable Methods 

arr = Array(1..10)
p arr

# 1. each
arr.each do |num|
  print(num * 2," " )
end
puts

# 2. each_with_index
arr.each_with_index do |num, index|
  print("#{index} : #{num}, ")
end
puts

# 3. select # returns an array of elements that satisfy the condition
arr2 = arr.select {|num| num % 2 == 0}
p arr2

# 4. reject # returns an array of elements that do not satisfy the condition
arr2 = arr.reject {|num| num % 2 == 0}
p arr2

# 5. map # returns an array of elements after applying the block
arr2 = arr.map {|num| num * 2}
p arr2

# 6. reduce # returns a single value after applying the block
arr2 = arr.reduce(10) {|sum, num| sum + num} # 10 is the initial value of sum
p arr2

# 7. find # returns the first element that satisfies the condition
arr2 = arr.find {|num| num % 2 == 0}
p arr2

# 8. group_by # returns a hash with keys as the result of the block and values as an array of elements that satisfy the block
arr2 = arr.group_by {|num| num % 2}
p arr2

# 9. grep # returns an array of elements that match the pattern
arr3 = %w[cat dog cow] # %w is a shortcut to create an array of strings
arr2 = arr3.grep(/c/)
p arr2

# 10. sort # returns an array of elements sorted in ascending order
arr2 = arr.sort
p arr2

# 11. max # returns the maximum element
arr2 = arr.max
p arr2

# 12. min # returns the minimum element
arr2 = arr.min
p arr2

# 13. reverse_each # iterates over the elements in reverse order
arr2 = arr.reverse_each {|num| print(num, " ")}
puts

# 14. count # returns the number of elements that satisfy the condition
arr2 = arr.count {|num| num % 2 == 0}
p arr2

# 15. with_index # returns an enumerator with index
enum = arr.map.with_index {|num, index| [index,num]}
p enum

# Shorthand for Enumerable Methods
# You can use the shorthand for enumerable methods as follows:
# map(&:method_name)
arr2 = arr.map(&:to_s).reduce(:+)
p arr2

# Predicate Enumerable Methods
# 1. include? # returns true if the element is present in the collection
p arr.include?(5)

# 2. any? # returns true if any element satisfies the condition
p arr.any? {|num| num % 2 == 0}

# 3. all? # returns true if all elements satisfy the condition
p arr.all? {|num| num > 3}

# 4. none? # returns true if none of the elements satisfy the condition
p arr.none? {|num| num > 10}

# 5. one? # returns true if only one element satisfies the condition
p arr.one? {|num| num >  9}