# Nested Collections

# Nested Arrays 
arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p arr[1][1] # => 5
# p arr[4][0]  => NoMethodError: undefined method `[]' for nil:NilClass
p arr[0][4] # => nil

# dig method
# If you want a nil value returned when trying to access an index of a nonexistent nested element

p arr.dig(4,0) # => nil
# this was showing an error when using arr[4][0] because arr[4] is nil and nil doesn't have the [] method

# Creating a nested array
arr = Array.new(3, Array.new(3, 0)) # => [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
# this creates a mutable array with 3 elements, each element is an array with 3 elements, all initialized to 0
# and if you change one of the elements, all the elements will change
arr[0][0] = 1
p arr
# this is because the inner arrays are all the same object, so changing one of them will change all of them
# this is because second argument of Array.new is the default value, and it is the same object for all the elements

arr = Array.new(3) { Array.new(3, 0) } # => [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
# this creates a immutable array with 3 elements, each element is an array with 3 elements, all initialized to 0
# and if you change one of the elements, only that element will change
arr[0][0] = 1
p arr
# this works because the inner arrays are all different objects, so changing one of them won't change the others

# Adding and removing elements
arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr << [10, 11, 12]
p arr # => [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]

arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.push([10, 11, 12])
p arr # => [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]

arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.unshift([10, 11, 12])
p arr # => [[10, 11, 12], [1, 2, 3], [4, 5, 6], [7, 8, 9]]

arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.pop
p arr # => [[1, 2, 3], [4, 5, 6]]

arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.shift
p arr # => [[4, 5, 6], [7, 8, 9]]

arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr[0].pop
p arr # => [[1, 2], [4, 5, 6], [7, 8, 9]]

# Iterating over nested arrays
arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.each do |subarr|
  subarr.each do |num|
    print(num, ' ')
  end
  puts
end

# using the flatten method
arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
arr.flatten.each do |num|
  print(num, ' ')
end # => 1 2 3 4 5 6 7 8 9
puts

# using any? and all?
arr = [[1, 6, 3], [4, 5, 6], [3, 8, 9]]
ans = arr.any? do |subarr| 
  subarr.all? { |num| num > 5 } 
end # => false
puts ans
# reverse the condition to get true
ans = arr.all? do |subarr|
  subarr.any? { |num| num > 5 }
end # => true
puts ans

# Nested Hashes

# Function to print hash beautifully
def print_hash(hash, indent = 0)
  hash.each do |k, v|
    if v.is_a?(Hash)
      puts "#{' ' * indent}#{k}:"
      print_hash(v, indent + 2)
    else
      puts "#{' ' * indent}#{k}: #{v}"
    end
  end
end

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}
print_hash(vehicles)
# => {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}}

# Accessing nested elements
puts "Accessing nested elements -> "
p vehicles[:alice][:model] # => "Corolla"

# vehicles[:zoe][:year] = 2021 # => NoMethodError: undefined method `[]=' for nil:NilClass
# using the dig method
puts "Using dig method -> "
p vehicles.dig(:zoe, :year) # => nil

# Adding and removing elements
puts "Adding and removing elements -> "

vehicles[:dave] = {year: 2021, make: "Ford", model: "Fusion"} # adding a new element
print_hash(vehicles)

vehicles[:alice][:color] = "blue" # adding a new key-value pair to an existing element
print_hash(vehicles)

vehicles.delete(:blake)
print_hash(vehicles)

# Methods
puts "Methods =>"

# select
puts "Select -> "
print_hash(vehicles.select { |_, v| v[:year] == 2020 }) # this will return a hash with the elements that have the year 2020

# map
puts "Map -> "
p vehicles.map { |_, v| v[:make] } # this will return an array with the makes of all the vehicles

# compact
# removes nil values from a hash
puts "Compact -> "
vehicles[:zoe] = nil
print_hash(vehicles.compact)

