require 'active_support'
require 'active_support/all'

# Show the date of the beginning of the current week
puts Date.today.beginning_of_week

# Show what the date will be in 30 days
puts Date.today + 30.days

# Show what day of the week today's date will fall on next year
one_year = Date.today + 1.year
puts one_year.strftime("%a%e %B %Y")

# Show what day of the week the user's birthday will be on this year
print "Please enter your birthday (MM-DD): "
bday_parse = Date.parse("2015-" + gets.chomp)
puts "Your birthday will fall on a " + bday_parse.strftime("%a") + " this year."

#pluralize a singular word the user enters
print "please enter a word for me to pluralize: "
puts gets.chomp.pluralize
# show the singular for a plural word the user enters
print "please enter a pluralized word for me to singularize: "
puts gets.chomp.singularize

# Using the String class, truncate a phrase the user enters to 20 letters
puts "Please enter at least a 20 character long phrase:"
puts "Your truncated phrase is: " + gets.chomp.truncate(20)

#  Using the Array class, convert an array of three words to a sentence with one command
puts %w{frenchtoast waffels flapjacks}.to_sentence(words_connector: ', or ', \
        last_word_connector: ', or at least ')
