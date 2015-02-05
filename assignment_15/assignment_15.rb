#!/usr/bin/ruby
# string of questions stored in q_str variable
q_str = File.read("questions.txt")
# q_str split on line break and each line stored in questions array
questions = q_str.split(/\n/)
# answers array to store answers from user
answers = []
# iterate over each question in order to call and display them
questions.each { |q| print q; answers << gets.chomp }
# displays answers
# puts the answers into an array with the questions then flattens them together.
#     Then creates hash with key value pairing.
results_hash = Hash[*questions.zip(answers).flatten]
# puts to screen questions and answers
results_hash.each { |k, v| puts k + v }
