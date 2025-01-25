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
# File descriptor is a number that represents an open file in the operating system
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

lorem.puts 'hello how are you'

lorem.rewind # moves the file pointer to the beginning of the file
p lorem.pos 
p lorem.gets