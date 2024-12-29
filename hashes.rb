# Hashes

# Creating Hashes
puts "Creating Hashes"
hash = { "name" => "harsh", "age" => 20 }
p hash
hash2 = { iq: 130, eq: 200 } # creates a hash with symbols as keys
p hash2
hash.merge!(hash2) # merges two hashes
p hash
hash3 = Hash.new # creates an empty hash
p hash3

# Accessing elements
puts "Accessing elements"
p hash["name"] # prints the value of the key "name"
p hash.fetch("age", "not present") # prints the value of the key "age" and returns "not present" if the key is not found
p hash.values_at("name", "age") # prints the values of the keys "name" and "age"
p hash.keys # prints the keys of the hash
p hash.values # prints the values of the hash
# fetch vs [] -> fetch raises an error if the key is not found, [] returns nil

# Adding and removing elements
puts "Adding and removing elements"
hash[:fs] = "broke" # adds a new key-value pair
p hash

hash.delete(:fs) # deletes the key-value pair with key :fs
p hash

# Iterating over hashes
puts "Iterating over hashes"
hash.each { |key, value| p "#{key}: #{value}" } # prints each key-value pair
hash.each_key { |key| p key } # prints each key
hash.each_value { |value| p value } # prints each value
hash.each_pair { |key, value| p "#{key}: #{value}" } # same as each


# Hash methods
puts "Hash methods"
p hash.length # returns the length of the hash
p hash.empty? # returns true if the hash is empty
p hash.key?("name") # returns true if the hash has the key "name"
p hash.select { |key, value| key == "name" } # returns a hash with key-value pairs that satisfy the condition
p hash.to_a # converts the hash to an array of key-value pairs