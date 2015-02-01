#calls on the date class
require 'date'
# prompts user for their name and wishes them Happy Birthday
print "Please enter you name: "
name = gets.chomp
print "Please enter your birthday (YYYY-MM-DD): "
bday = gets.chomp
#parses out the birthday so we can output utilizing strftime
d = Date.parse(bday)
#Displays are greating
puts "Happy Birthday #{name.capitalize}! (#{d.strftime('%a, %b %d, %Y')})"
