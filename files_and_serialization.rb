# Files and Serialization

# I/O Streams
# stdin, stdout, stderr
# stored in the global variables $stdin, $stdout, $stderr in /dev/fd/0, /dev/fd/1, /dev/fd/2 respectively

# I/O Class
# IO class is the base class for input/output streams
$stdout.puts "Hello, world!" # This is the same as puts "Hello, world!"

begin
  $stdin.puts "Hi there!" # This will raise an error
rescue StandardError => e
  puts "Error => #{e}"
end

# I/O Objects
io = IO.new(1) # 1 is the file descriptor for stdout
# File descriptor is a number that represents an open  file in the operating system
# 0 is stdin, 1 is stdout, 2 is stderr

io.puts "io used" # This is the same as puts "Hello, world!"

# IO sysopen
fd = IO.sysopen("/dev/null", "w+") # /dev/null creates a black hole ie. it accepts input but does nothing with it
io = IO.new(fd)
p io.puts "Hello, world!" # returns nil

fd_lorem = IO.sysopen('lorem.txt', 'a+') 
lorem = IO.new(fd_lorem)
while (line = lorem.gets)
  puts line
end

# Position of the file pointer
p lorem.pos 
p lorem.eof? # checks if the file pointer is at the end of the file

# lorem.puts 'hello how are you'

lorem.rewind # moves the file pointer to the beginning of the file
p lorem.pos 
p lorem.gets

p lorem.read # reads the entire file

# Sub-Classes 
# File class is a subclass of IO class

p File.absolute_path('lorem.txt')
p File.size('lorem.txt')

# Serialization

# Changing objects to strings so they can be stored in files or databases
# It can be done using files like JSON, XML, YAML, Marshal, etc

# YAML
# YAML is a human-readable data serialization format
# Used by Rails for configuration files

require 'yaml'

p YAML.load File.read('yaml.yaml') # loads the yaml file

# Using YAML to serialize objects

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_yaml
    YAML.dump ({
      name: @name,
      age: @age
    })
  end

  def self.from_yaml(yaml)
    data = YAML.load(yaml)
    Person.new(data[:name], data[:age])
  end
end

person = Person.new('Harsh', 20)
yaml = person.to_yaml
p yaml

person2 = Person.from_yaml(yaml)
p person2

# JSON  

require 'json'

p JSON.load File.read('json.json') # loads the json file

# Using JSON to serialize objects

class Animal
  attr_accessor :name, :species

  def initialize(name, species)
    @name = name
    @species = species
  end

  def to_json
    JSON.dump ({
      name: @name,
      species: @species
    })
  end

  def self.from_json(json)
    data = JSON.load(json)
    Animal.new(data['name'], data['species'])
  end
end

animal = Animal.new('Dog', 'Canine')
json = animal.to_json
p json

animal2 = Animal.from_json(json)
p animal2

# Message Pack
# MessagePack is a binary serialization format
# It is faster and more compact than JSON

require 'msgpack'

msg = MessagePack.pack({name: 'Harsh', age: 20})

p msg

obj = MessagePack.unpack(msg)
p obj

# Marshal
# Marshal is a serialization format that is specific to Ruby

msg = Marshal.dump({name: 'Harsh', age: 20})

p msg

obj = Marshal.load(msg)
p obj
