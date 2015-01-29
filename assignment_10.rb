print "Please enter some text: "
user_string = gets.chomp
#displays how many words inputed
puts "you submited #{user_string.split.length} words!"
#splits string into array only containing words (no spaces)
user_words = user_string.split
#takes all the words in the array and joins with a space into a string
correct_format = user_words.join(' ')
#displays the reverse of the string
puts cfr = correct_format.reverse
#displays the still reverse and chops off the end chrtr
puts cfrc = cfr.chop
#takes the string and reverses and then displays
puts cfrc.reverse
