# Project Management

# require_relative
require_relative('lib/add.rb') # use relative path
Add.new(1, 2)

# require
require './lib/sub' # use either the explicit relative path or the absolute path
Sub.new(1, 2)
# if not given the explicit relative path or the absolute path, it looks in the $LOAD_PATH

action() # this will return "Sub Action" because the last definition of action is in sub.rb

require 'csv' # this looks for csv.rb in $LOAD_PATH
begin
  require_relative 'lib/random' # this returns an error because random.rb doesn't exist
rescue LoadError => e
  puts e
end
# Convention is to use require_relative for files in the same project and require for external libraries

# Local Variables don't work across files
# Constants work across files

# Gems - Ruby libraries
# Gems are packages containing Ruby utility libraries that someone wrote. 
# They are installed using the gem command
# gem install <gem_name>
# If you use a gem, it is called a dependency
# Gems are stored in the $GEM_HOME directory

require 'colorize' # this is a gem
puts "This is blue".colorize(:blue)

# Bundler - Ruby dependency manager
# Bundler is a tool that manages the dependencies of a Ruby project

# It creates a file called Gemfile.lock that lists the exact versions of the dependencies
# It installs the dependencies using the gem command  
# To install bundler, run `gem install bundler`

# To create a Gemfile, run `bundle init`
# This creates a Gemfile that lists the dependencies
# To add a dependency to the Gemfile, run `bundle add <gem_name>`
# This creates a Gemfile.lock file that lists the exact versions of the dependencies

# Gemfile: Defines the gems and their version constraints required by the project.
# Gemfile.lock: Records the exact versions of gems and dependencies installed,
# ensuring consistency across environments.

# To install the dependencies, run `bundle install`
# To execute a Ruby file with the dependencies, run `bundle exec ruby <file_name>`

