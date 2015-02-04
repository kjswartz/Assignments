class Person
  require 'date'
  attr_reader :first_name, :last_name
  attr_accessor :birthdate

  # people counter to track Person objects created
  @@people_counter = 0
  def initialize
    @@people_counter += 1
  end
  def self.number_of_people
    @@people_counter
  end

  # splits user name into array of two variables and sets first and last names
  def name=(user_name)
    @first_name = user_name.split[0]
    @last_name = user_name.split[1]
  end

  # take the user inputed birthday and store it in @age to call in private methode
  def age=(user_bday)
    @age = user_bday
    calculateAge
  end

  # sets the calculateAge method to private
  private
  def calculateAge
    # parses the user inputed birthdate inorder to subtract from current day
    bday_parse = Date.parse(@age)
    today = Date.today
    time_difference = (today - bday_parse)
    # translates time_difference into years and sets to integer to get rid of float
    @birthdate = (time_difference/365.25).to_i
  end

end

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
  new_person.age = gets.chomp

  puts "First Name: " + new_person.first_name
  puts "Last Name: " + new_person.last_name
  puts "You are #{new_person.birthdate} years old!"
  puts "Person Count: #{Person.number_of_people}"
end
