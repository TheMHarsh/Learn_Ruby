# Object Oriented Programming

# Core principles of OOP:
# 1. Encapsulation
# Encapsulation is the bundling of data with the methods that operate on that data, 
# or the restricting of direct access to some of an object's components.
# 2. Polymorphism
# Polymorphism is the ability of different objects to respond to the same message in different ways.
# 3. Inheritance
# Inheritance is the mechanism by which one class acquires the properties and behavior of another class.
# 4. Abstraction
# Abstraction is the concept of object-oriented programming that 
# "shows" only essential attributes and "hides" unnecessary information.

# Classes and Objects
# Classes are the blueprints for objects. Objects are instances of classes.
# Class name follow CamelCase convention.
class Chipmunk
end

Alwin = Chipmunk.new # Billu is an object of class Cat
p Alwin.class

# Modules
# Modules are collections of methods and constants. 
# They cannot generate instances. They are used to add functionality to a class.
# Can be used to group related methods together.
# Mixin - it is the process of including a module in a class.
module Aawaz
  def speak(sound)
    puts sound
  end
end

class Cat
  include Aawaz # Cat class includes the module Aawaz
end

class Human
  include Aawaz # Human class includes the module Aawaz
end

Billu = Cat.new
Billu.speak("Meow")

Harsh = Human.new
Harsh.speak("Hello")

# ancestor chain - it is the order in which Ruby looks for a method in the inheritance hierarchy.
p Cat.ancestors # [Cat, Aawaz, Object, Kernel, BasicObject]
p Human.ancestors # [Human, Aawaz, Object, Kernel, BasicObject]

class Dog
  def initialize # constructor - it is called when an object is created
    puts "Its Doggo Time"
  end
end

Doggu = Dog.new # Its Doggo Time

# Instance variables
# Instance variables are variables that belong to an object. They are prefixed with @.
class Parrot
  def initialize(name)
    @name = name
  end
end

Polly = Parrot.new("Polly")

# Composition
# Composition is the concept that a class can be made up of other classes.
class Processor
  def initialize(brand)
    @brand = brand
  end
  def start 
    puts "Processor started"
  end
  def brand
    @brand
  end
end

class Computer
  def initialize
    @processor = Processor.new("Intel") # Computer class has a Processor object
  end

  def boot
    @processor.start
    puts "Computer booted"
  end
end

my_computer = Computer.new
my_computer.boot

# Aggregation
# Aggregation is the concept that a class can have a relationship with another class.
class Student
end

class School
  def initialize(student)
    @student = student
  end
  
  def list_students
    puts "Listing students"
    puts @student
  end
end

student = Student.new
school = School.new(student)
school.list_students

# If the child lives and dies with the parent, it’s composition. 
# If the child can exist independently and is only referenced by the parent, it’s aggregation.

# Instance methods
# Instance methods are methods that belong to an object.
class Bird
  def initialize(name)
    @name = name
  end
  def speak(sound)
    puts "#{@name} says #{sound}"
  end
end

peacock = Bird.new("Morni")
peacock.speak("ghanan ghan goliyan hai chal gayi raat maa") 
cuckoo = Bird.new("Koyal")
cuckoo.speak("Koo Koo")
# Here, both peacock and cuckoo are objects of class Bird.

# Accessor Method
# Accessor methods are used to read and write the instance variables of an object.

# Setter Method - Setter methods are used to write the instance variables of an object.
# Getter Method - Getter methods are used to read the instance variables of an object.
class Phone
  def initialize(brand, processor)
    @brand = brand
    @processor = Processor.new(processor)
  end
  # As a convention in Ruby, getter and setter methods 
  # are named after the instance variable they read or write.
  def brand
    @brand 
  end
  def processor # processor is a getter method
    @processor.brand # 
  end
  def processor=(processor) # processor= is a setter method
    @processor = Processor.new(processor)
  end
end
# Here, get_brand and brand are getter methods.
# And change_processor is a setter method.
iphone = Phone.new("Apple", "A13 Bionic")
puts iphone.brand
puts iphone.processor
iphone.processor = "A1000 Bionic Ultra Maximus Deus Ex Machina"
puts iphone.processor

# To get the same as above efficiently, 
# we can use attr_accessor, attr_reader, and attr_writer.

# attr_accessor - It creates both getter and setter methods.
# attr_reader - It creates only getter methods.
# attr_writer - It creates only setter methods.

# Recreating the above example using attr_accessor and attr_getter

class Laptop
  attr_accessor :processor # instance variable is defined using symbol
  attr_reader :brand
  def initialize(brand, processor)
    @brand = brand
    @processor = processor
  end
end

macbook = Laptop.new("Apple", "M1")
puts macbook.brand
puts macbook.processor
macbook.processor = "M2"
puts macbook.processor

# You should also use getter and setter methods to access instance variables even within the class.


# self - self is a special variable that points to the object that "owns" the currently executing code.

class Cube
  attr_accessor :length, :width, :height
  def initialize(l, w, h)
    @length = l
    @width = w
    @height = h
  end

  def change_dimensions(l,w,h)
    # length = l
    # width = w
    # height = h
    # the above won't work as it will create local variables
    
    self.length = l
    self.width = w
    self.height = h
    # this calls the setter methods of length, width, and height 
  end
end

cube = Cube.new(10, 20, 30)
p [cube.length, cube.width, cube.height]

cube.change_dimensions(20, 30, 40)
p [cube.length, cube.width, cube.height]

# self can be used to call other instance methods of the class.

# Class methods
# Class methods are methods that belong to the class itself.
# used when the method does not require an instance of the class to be created.
class Example
  @@count = 0 # class variable - it is shared among all objects of the class
  MULT = 10 # constant - it is defined in uppercase
  def initialize
    @@count += 1
  end
  def self.count_times_10
    @@count * MULT
  end
end

Example.new
Example.new
puts Example.count_times_10

# to_s method
# puts method calls to_s for any argument that is not an array.

class Spaceship
  def initialize(name, speed)
    @name = name
    @speed = speed
  end
  def to_s
    "The name of the spaceship is #{@name} and it's speed is #{@speed}"
  end
end

enterprise = Spaceship.new("Enterprise", "Warp 9")
puts enterprise
p enterprise # p calls inspect method

# Inheritence
# Inheritance is the mechanism by which one class acquires the properties and behavior of another class.

class Family
  def speak(name)
    "Hello #{name}"
  end
  def eat
    "Eating "
  end
end

class Son < Family # `<` is used to inherit from another class
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
  def speak
    super(self.name) # super is used to call the method of the parent class
  end
  def eat(food)
    super() + food
    # should be called without any arguments if arguments are given in child class
    # super gives error if arguments are given in child class and not in parent class
  end
end

harsh = Son.new("Harsh")
p harsh.speak
p harsh.eat("momos")

# Inheritence vs Modules
# 1. Inheritance is an "is-a" relationship while modules are a "has-a" relationship.
# 2. Inheritance is used when a class is a type of another class. Modules are used when a class has a behavior.
# 3. You can only subclass (class inheritance) from one class. You can mix in as many modules (interface inheritance) as you'd like.
# 4. You can't make objects out of modules. You can make objects out of classes.

# More on Modules
# 1. Method Lookup Path
module Example1
  def example
    "this is example1"
  end
end

module Example2
  def example
    "this is example2"
  end
end

class Ex
  include Example1
  include Example2
end

ex = Ex.new
p ex.example # this is example2
p Ex.ancestors

# Class::ancestors() can be used to see where Ruby looks for the method.
# It is also called method lookup path.
# The last included module is the first in the ancestor chain.

# 2. For namespacing
# Modules can be used to group related classes, methods, and constants together.
module Math
  class Circle
    def area(radius)
      3.14 * radius * radius
    end
  end
  class Rectangle
    def area(length, breadth)
      length * breadth
    end
  end
end

# to initialize the class inside a module
rectangle = Math::Rectangle.new
p rectangle.area(5,6)

# 3. Container
# Modules can be used as a container for methods.
module Arithmetic
  def self.add(a,b) # have to use self to define methods in modules
    a + b
  end
  def self.sub(a,b)
    a - b
  end
end

p Arithmetic.add(5,6)

# Private, Protected, and Public Methods
# Private methods can only be called within the class.
# Protected methods can be called within the class and its subclasses.
# Public methods can be called from outside the class.

class Example3
  def hello 
    "hello"
  end

  protected # anything below this will be protected

  def greeting
    "greeting"
  end

  private # anything below this will be private
  def hola
    "hola"
  end
end

ex3 = Example3.new
p ex3.hello
# p ex3.greeting # gives NoMethodError
# p ex3.hola # gives NoMethodError