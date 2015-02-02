#!/usr/bin/ruby
# array of questions to ask the user
questions = File.new("questions.txt", "r")

# answers array to store answers from user
answers = []
# iterate over each question in order to call and display them
questions.each { |q| print q; answers << gets.chomp }
questions.close
# displays answers
puts "Howdy #{answers[0].capitalize}!" if answers[0].length > 0
puts "Your favorite colore is #{answers[1].downcase}." if answers[1].length > 0
puts "You wear size #{answers[2]} shoe." if answers[2].length > 0
puts "And as far as hanging out, you said #{answers[3]}." if answers[3].length > 0
puts "Why didn't you answer any of my questions?" \
      if answers[0].length == 0 && answers[1].length == 0 && \
         answers[2].length == 0 && answers[3].length == 0
