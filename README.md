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
- **Instance Variables:**  
  - Variables that belong to an object, prefixed with `@`.  
- **Class Variables:**  
  - Variables that belong to the class itself, prefixed with `@@`. Shared among all instances of the class.
- **Constants:**  
  - Variables that are meant to remain unchanged, written in all uppercase letters.
- **Composition:**  
  - Concept that a class can be made up of other classes.  
- **Aggregation:**  
  - Concept that a class can have a relationship with another class.  
- **Instance Methods:**  
  - Methods that belong to an object.  
  - Use `self` to refer to the current object within an instance method.
- **Accessor Methods:**  
  - Methods used to read and write instance variables.  
  - **Setter Methods:** Used to write instance variables.  
  - **Getter Methods:** Used to read instance variables.  
  - Use `attr_accessor` to create both getter and setter methods.  
  - Use `attr_reader` to create getter methods only.  
  - Use `attr_writer` to create setter methods only.
- **Class Methods:**  
  - Methods that belong to the class itself, defined using `self.method_name`.  
- **Private, Protected, and Public Methods:**  
  - **Private Methods:** Can only be called within the class, defined using `private`.  
  - **Protected Methods:** Can be called within the class and its subclasses, defined using `protected`.  
  - **Public Methods:** Can be called from outside the class, defined using `public`.  

  ---