#All should print from 1 to the number input by the user
#Request input of a number from the user.
  print 'Please pass me a number:'
  user_input = gets.chomp.to_i
#Iterate the number of times indicated by the input number
#Within the loop, print the number of the iteration
  print "\n The following is your iteration: "
  1.upto(user_input) {|counter| print counter, ' ' }
#while looping
  print "\n The following count is utilizing while method: "
  while_counter = 1
  while user_input > 0
    print while_counter, ' '
    user_input -= 1
    while_counter += 1
  end
  user_input = while_counter - 1 # resets user_input to original inut
#for variable in range
  print "\n The following count is utilizing for in range method: "
  for counter in (1..user_input)
    print counter, ' '
  end
#loop
  print "\n The following count is utilizing loop method: "
  loop_counter = 1
  loop do
    print loop_counter, ' '
    loop_counter += 1
    break if loop_counter > user_input
  end
#until method
  print "\n The following count is utilizing until method: "
  until_counter = 1
  until until_counter > user_input
    print until_counter, ' '
    until_counter += 1
  end
#times method
  print "\n The following count is utilizing times method: "
  times_counter = 1
  user_input.times {print times_counter, ' '; times_counter += 1}
#range with each
  print "\n The following count is utilizing range with each method: "
  (1..user_input).each {|range_count| print range_count, ' '}
  puts ''
