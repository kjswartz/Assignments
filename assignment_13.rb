# generates random number between 1 and 50
rand_num = rand(50)
# create guess counter and set to zero
guess_counter = 0
puts "I'm thinking of a number between 1 and 50. Can you guess it?"
# loops through guesses, breaking on the correct one.
loop do
  usr_guess = gets.chomp.to_i
  guess_counter += 1
  case
  when usr_guess < rand_num
    puts "Too low. Try again:"
  when usr_guess > rand_num
    puts "Too high. Try again:"
  else
    puts "You guessed the number in #{guess_counter} guess!" if guess_counter == 1
    puts "You guessed the number in #{guess_counter} guesses!" if guess_counter > 1
  end
  break if usr_guess == rand_num
end
