#!/usr/bin/ruby
require 'json'
# reads json file into variable for parsing
questions_raw = File.read("questions.json")
# parses json data into hash
questions_hash = JSON.parse(questions_raw)
# takes the values from the questions hash and stores them into questions array
questions = questions_hash['questions'].values
# answers array to store answers from user
answers = []
# iterate over each question in order to call and display them
questions.each { |q| print q; answers << gets.chomp }
# puts the answers into an array with the questions then flattens them together.
#     Then creates hash with key value pairing.
results_hash = Hash[*questions.zip(answers).flatten]
# puts to screen questions and answers
results_hash.each { |k, v| puts k + v }
