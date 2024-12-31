# Learn Ruby 🚀  

## 📂 Table of Contents  
1. [Introduction to Ruby](#introduction-to-ruby)  
2. [Conditionals and Loops](#conditionals-and-loops)  
3. [Arrays](#arrays)  
4. [Hashes](#hashes)  
5. [Methods](#methods)  
6. [Debugging](#debugging)
7. [Enumerables](#enumerables)  

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