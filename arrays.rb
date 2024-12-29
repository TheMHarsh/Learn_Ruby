# Arrays
arr = [1, 2, 3, 4, 5]
p arr

arr2 = Array.new(5, 0) # creates an array of 5 elements, all initialized to 0
p arr2

# Accessing elements
puts arr[0] 
puts arr[-1] # negative index starts from the end

# first and last element
puts "first and last element"
p arr.first(3)
p arr.last(3)

# Adding and removing elements
puts "Adding and removing elements"
arr.push(6, 7) # adds 6 and 7 to the end of the array
p arr
arr << 8 # adds 8 to the end of the array
p arr
arr.unshift(0) # adds 0 to the beginning of the array
p arr
arr.pop(4) # removes the last element
p arr
arr.shift(1) # removes the first element
p arr
arr.delete_at(2) # removes the element at index 2
p arr
arr.delete(4) # removes the element 4
p arr
arr2.clear # removes all elements
p arr2
arr2.insert(3, 1, 2, 3) # inserts 1, 2, 3 at index 3 and expands the array if index is beyond the array
p arr2
p arr2.sample(2) # returns 2 random elements from the array
p arr2.shuffle # returns a shuffled array


# Adding and Subtracting arrays
puts "Adding and Subtracting arrays"
arr3 = [9, 10]
p arr + arr3
p arr.concat(arr3)
p arr - arr3

# Basic array methods
puts "Basic array methods"
p arr.length # returns the length of the array
p arr.size # same as length
p arr.reverse # returns the reverse of the array
p arr.sort # returns the sorted array 
p arr.empty? # returns true if the array is empty
p arr.include?(3) # returns true if the array includes the element 3  
p arr.join(", ") # joins the elements of the array with a comma and space (returns a string)
p arr.index(3) # returns the index of the element 3 (returns nil if not found)
p arr.count(3) # returns the count of the element 3
p arr.uniq # returns the array with duplicate elements removed
p arr.find { |x| x%2==0 } # returns the first element that satisfies the condition


# Map and Select
puts "Map and Select"
p arr.map { |i| i * 2 } # returns a new array with each element multiplied by 2
p arr.collect { |i| i * 2 } # same as map
p arr.select { |i| i.even? } # returns a new array with only the even elements
p arr.reject { |i| i.even? } # returns a new array with only the odd elements

# Destructive Methods
# These methods modify the array in place:
# <<, clear, concat, delete, delete_at, delete_if,
# fill, insert, keep_if, pop, push, replace,
# shift, unshift

# Non-Destructive Methods
# These methods return a new array and do not modify the original array:
# +, -, &, |, collect, map, compact, flatten, reject, reverse, rotate,
# select, shuffle, slice, sort, uniq


# ! methods
puts "! methods" # modify the array in place - place ! after any method
p arr
p arr.reverse! # reverses the array in place
p arr

# Multi-dimensional arrays
puts "Multi-dimensional arrays"
arr4 = [[1, 2], [3, 4], [5, 6]]
p arr4
p arr4[0][1] # access the element at row 0, column 1

# Multi-dimensional array methods
puts "Multi-dimensional array methods"
p arr4.flatten # returns a one-dimensional array
p arr4.transpose # returns the transpose of the array
p arr4.product([7, 8]) # returns the cartesian product of the array with [7, 8] 

# Looping through arrays
puts "Looping through arrays"
# each method
arr.each { |i| p i}
# each_with_index method
arr.each_with_index { |i, index| print "#{index}:#{i}" 
  if index < arr.length - 1 then print ", " else print "\n" end
}
# each_index method
arr.each_index { |index| index}

  

