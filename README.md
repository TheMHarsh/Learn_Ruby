# Learn Ruby 🚀  

## 📂 Table of Contents  
1. [Introduction to Ruby](#introduction-to-ruby)  
2. [Conditionals and Loops](#conditionals-and-loops)  
3. [Arrays](#arrays)  
4. [Hashes](#hashes)  
5. [Methods](#methods)  
6. [Debugging](#debugging)
7. [Enumerables](#enumerables)  
8. [Nested Collections](#nested-collections)  
9. [Object Oriented Programming](#object-oriented-programming)  
10. [Exception Handling](#exception-handling)
11. [Project Management](#project-management)

---

<h2 id="introduction-to-ruby">1. Introduction to Ruby 🚀</h2>  

**File:** [introduction_to_ruby.rb](introduction_to_ruby.rb)  

- **Typecasting**  
- **Even and Odd**  
- **String to Integer**  
- **Concatenation**  
- **Substrings**  
- **Interpolation**  
- **String Methods:**  
  - `length`, `reverse`, `upcase`, `downcase`, `capitalize`  
  - `swapcase`, `strip`, `lstrip`, `rstrip`  
  - `empty?`, `include?`, `split`, `gsub`  
- **Symbols**  
- **Arrays**  
- **Hashes**  
- **Constants**  
- **Global Variables**  
- **Input/Output:**  
  - `puts`, `print`, `p`, `putc`  

---

<h2 id="conditionals-and-loops">2. Conditionals and Loops 🔄</h2>  

**File:** [conditionals_and_loops.rb](conditionals_and_loops.rb)  

- **Conditionals:**  
  - `if`, `elsif`, `else`, `unless`, `case`  
  - **Ternary Operator**  
- **Comparison Methods:**  
  - `.eql?`, `.equal?`, `<=>` (spaceship operator)  
- **Loops:**  
  - `loop do`, `while`, `until`, `for`  
  - `times`, `each`, `upto`, `downto`  

---

<h2 id="arrays">3. Arrays 📊</h2>  

**File:** [arrays.rb](arrays.rb)  

- **Creating & Accessing:**  
  - **Indexing**, `first`, `last`  
- **Adding & Removing:**  
  - `push`, `<<`, `unshift`, `pop`, `shift`  
  - `delete_at`, `delete`, `clear`, `insert`  
- **Array Methods:**  
  - **Basic:** `length`, `size`, `reverse`, `sort`, `empty?`, `include?`  
  - **Destructive:** `reverse!`, `sort!`, `uniq!`, `shuffle!`  
  - **Non-Destructive:** `reverse`, `sort`, `uniq`, `shuffle`  
- **Multi-dimensional Arrays:**  
  - `flatten`, `transpose`, `product`  
- **Looping:**  
  - `each`, `each_with_index`, `each_index`  

---

<h2 id="hashes">4. Hashes 🔑</h2>  

**File:** [hashes.rb](hashes.rb)  

- **Creating & Accessing:**  
  - `[]`, `fetch`, `values_at`, `keys`, `values`  
- **Adding & Removing:**  
  - `[]=`, `delete`  
- **Iterating:**  
  - `each`, `each_key`, `each_value`, `each_pair`  
- **Hash Methods:**  
  - `merge`, `clear`, `has_key?`, `has_value?`, `empty?`, `size`  

---


<h2 id="methods">5. Methods 🛠️</h2>  

**File:** [methods.rb](methods.rb)  

- **Defining Methods:**  
  - `def` keyword
- **Calling Methods:**  
  - `method_name`, `method_name(arguments)`  
- **Methods with Arguments:**  
  - `def method_name(arg1, arg2)`
- **Default Arguments:**  
  - `def method_name(arg1="default")`
- **Implicit Return:**  
  - The last line of the method is returned  
- **Explicit Return:**  
  - `return value`  
- **Predicate Methods:**  
  - Methods that return a boolean value, end with `?`  
  - Examples: `empty?`, `include?`, `odd?`, `even?`  
- **Bang Methods:**  
  - Methods that modify the object in place, end with `!`  
  - Examples: `reverse!`, `upcase!`, `downcase!`  

---

<h2 id="debugging">6. Debugging 🐞</h2>  

**File:** [debugging.rb](debugging.rb)  

- **Pry-byebug:**  
  - `require 'pry-byebug'`  
  - Add `binding.pry` where you want to pause the code  
  - Run the file to see a prompt where you can inspect the code  
  - Type `exit` to continue the code execution  
  - Type `exit!` to exit the debugger

---

<h2 id="enumerables">7. Enumerables 📜</h2>  

**File:** [enumerable_methods.rb](enumerable_methods.rb)  

- **Basic Enumerable Methods:**  
  - `each`, `each_with_index`, `select`, `reject`, `map`, `reduce`, `find`, `group_by`, `grep`, `sort`, `max`, `min`, `reverse_each`, `count`, `with_index`  
- **Shorthand for Enumerable Methods:**  
  - `map(&:method_name)`  
- **Predicate Enumerable Methods:**  
  - `include?`, `any?`, `all?`, `none?`, `one?`  

---

<h2 id="nested-collections">8. Nested Collections 🗂️</h2>  

**File:** [nested_collections.rb](nested_collections.rb)  

- **Nested Arrays:**  
  - Accessing elements: `arr[1][1]`, `arr.dig(4,0)`  
  - Creating nested arrays: `Array.new(3, Array.new(3, 0))`, `Array.new(3) { Array.new(3, 0) }`  
  - Adding and removing elements: `<<`, `push`, `unshift`, `pop`, `shift`  
  - Iterating over nested arrays: `each`, `flatten.each`  
  - Using `any?` and `all?` with nested arrays  
- **Nested Hashes:**  
  - Accessing elements: `hash[:key][:subkey]`, `hash.dig(:key, :subkey)`  
  - Adding and removing elements: `hash[:key] = value`, `hash.delete(:key)`  
  - Iterating over nested hashes: custom method `print_hash`  
  - Methods: `select`, `map`, `compact`  

---

<h2 id="object-oriented-programming">9. Object Oriented Programming 🧩</h2>  

**File:** [object_oriented_programming.rb](object_oriented_programming.rb)  

- **Core Principles of OOP:**  
  - **Encapsulation:** Bundling data with methods that operate on that data.  
  - **Polymorphism:** Ability of different objects to respond to the same message in different ways.  
  - **Inheritance:** Mechanism by which one class acquires the properties and behavior of another class.  
  - **Abstraction:** Concept of showing only essential attributes and hiding unnecessary information.  
- **Classes and Objects:**  
  - Classes are blueprints for objects. Objects are instances of classes.  
  - Class names follow CamelCase convention.  
  - Defined using the `class` keyword.  
  - The `initialize` method is a constructor for creating objects.
- **Modules:**  
  - Collections of methods and constants. Cannot generate instances. Used to add functionality to a class.  
  - **Mixin:** Process of including a module in a class using `include`.  
  - Defined using the `module` keyword.  
  - Use `include` to add instance methods from a module to a class.  
  - Use `extend` to add class methods from a module to a class.
  - **Namespacing:** Organizing similar classes and modules under a module.
  - **Container** Using modules as a collection of methods and constants.   
- **Instance Variables:** Variables that belong to an object, prefixed with `@`.  
- **Instance Methods:**  
  - Methods that belong to an object.  
  - Use `self` to refer to the current object within an instance method.
- **Class Variables:** Variables that belong to the class itself, prefixed with `@@`. Shared among all instances of the class.
- **Class Methods:** Methods that belong to the class itself, defined using `self.method_name`.  
- **Constants:** Variables that are meant to remain unchanged, written in all uppercase letters like `NAME`.
- **Composition:** Concept that a class can be made up of other classes.  
- **Aggregation:** Concept that a class can have a relationship with another class.  
- **Accessor Methods:**  
  - Methods used to read and write instance variables.  
  - **Setter Methods:** Used to write instance variables.  
  - **Getter Methods:** Used to read instance variables.  
  - Use `attr_accessor` to create both getter and setter methods.  
  - Use `attr_reader` to create getter methods only.  
  - Use `attr_writer` to create setter methods only.
- **Private, Protected, and Public Methods:**  
  - **Private Methods:** Can only be called within the class, defined using `private`.  
  - **Protected Methods:** Can be called within the class and its subclasses, defined using `protected`.  
  - **Public Methods:** Can be called from outside the class, defined using `public`.  

  ---

  <h2 id="exception-handling">10. Exception Handling 🚨</h2>  

**File:** [exception_handling.rb](exception_handling.rb)  

- **Exception Handling:**  
  - Ruby has a built-in exception handling mechanism to handle errors in your code.
- **Begin and Rescue Block:**  
  - Use `begin` and `rescue` to handle exceptions.
  - `rescue` catches all exceptions unless a specific type is specified.
- **Specifying Exception Types:**  
  - You can specify the type of exception you want to catch.
- **Storing the Exception Object:**  
  - Use `rescue => e` to store the exception object in a variable.
  - The exception object contains information about the error that occurred.
- **Else Block:**  
  - The `else` block runs when no exception occurs.
- **Ensure Block:**  
  - The `ensure` block runs regardless of whether an exception occurs or not.
- **Raise:**  
  - You can raise an exception using the `raise` keyword.
  - You can also raise a specific type of exception.
- **Retry Keyword:**  
  - Use `retry` to retry the `begin` block from the start.

---

<h2 id="project-management">11. Project Management 📦</h2>

**File:** [project_management.rb](project_management.rb)  

- **Require and Require_relative:**  
  - Use `require` to load external libraries or files.
  - Use `require_relative` to load files relative to the file containing the `require_relative` statement.
  - Convention is to use `require_relative` for files in the same project and `require` for external libraries.
- **$LOAD_PATH:**  
  - Ruby searches for files to load in the directories listed in `$LOAD_PATH`.
- **LoadError:**  
  - Raised when a file required by `require` or `require_relative` cannot be found.
- **Local Variables:**  
  - Local variables do not work across files.
- **Constants:**  
  - Constants work across files.
- **Gems:**  
  - Gems are packaged Ruby applications or libraries.
  - Use `gem install gem_name` to install a gem.
  - Use `require 'gem_name'` to use the gem in your code.
- **Bundler:**  
  - Bundler is a tool to manage gem dependencies for your Ruby applications.
  - Use `bundle init` to create a `Gemfile`.
  - Use `bundle install` to install the gems specified in the `Gemfile`.
  - Use `bundle exec` to run commands in the context of the bundle.
- **Gemfile:**  
  - A `Gemfile` is a file that specifies the gems required for your application.
  - Example:
    ```ruby
    source 'https://rubygems.org'
    gem 'rails'
    gem 'pg'
    ```
- **RuboCop:**  
  - RuboCop is a Ruby static code analyzer and formatter.
  - Use `gem install rubocop` to install RuboCop.
  - Use `rubocop` to run RuboCop on your code.
  - Use `.rubocop.yml` to configure RuboCop for your project.

---