#!/usr/bin/ruby
# array of questions to ask the user
questions = ["Howdy partner, what is your name? ",
             "What is your favorite color? ", "What size shoe do you wear? ",
             "Do you want to hangout sometime? "]
# answers array to store answers from user
answers = []
# iterate over each question in order to call and display them
questions.each { |q| print q; answers << gets.chomp }
# puts the answers into an array with the questions then flattens them together.
#     Then creates hash with key value pairing.
results_hash = Hash[*questions.zip(answers).flatten]
# puts to screen questions and answers
results_hash.each { |k, v| puts k + v }
