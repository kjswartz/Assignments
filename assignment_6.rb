require 'date'
# Create a String variable named 'name'
name = String.new
# Create a Date variable named "a_date"
a_date = Date.new
# Create an integer variable named "age"
age = 1
# Create an array of names named 'names'
names = []
# Create another array, using %w, named 'more_names'
more_names = %w{}
# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = {names: 'ages'}
# Keep this part as a way to test your code
puts name.class
puts a_date.class
puts age.class
puts names.class
puts more_names.class
puts names_and_ages.class

puts name.is_a? String
puts a_date.is_a? Date
puts age.is_a? Fixnum
puts names.is_a? Array
puts more_names.is_a? Array
puts names_and_ages.is_a? Hash

# Create a String literal and output it's class (one line)
puts "Hello Ruby".class
# Create a Fixnum literal and output it's class (one line)
puts 1.class
# Create an Array literal and output it's class (one line)
puts [].class
# Create a Hash literal and output it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
puts ({}.class)
# Create a symbol and output it's class
puts :x.class
# Create a String constant with any name you choose
NAME ="Kyle"
# Change the value of that constant
NAME = "toto"
# Output the constant's value to the screen
puts "Your new constant is #{NAME}"
