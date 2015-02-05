# loads file housing my Person Class
load 'assignment_21_person.rb'

# starting greeting message
puts "Lets create a person!"
# loops through creating new persons until \q is entered
loop do
  # creates new_person object from Person class
  new_person = Person.new
  puts "What is your first and last name: "
  user_name = gets.chomp
  break if user_name == '\q'
  new_person.name = user_name

  puts "When is your birthdate (YYYY-MM-DD): "
  # sets user birthdate to @birthdate attribute
  new_person.birthdate = gets.chomp


  puts "First Name: " + new_person.first_name
  puts "Last Name: " + new_person.last_name
  puts "You are #{new_person.age} years old!"
  puts "Person Count: #{Person.number_of_people}"
end
