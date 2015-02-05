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

  # age method to call private calculateAge method
  def age
    calculateAge
  end

  # sets the calculateAge method to private
  private
  def calculateAge
    # parses the user inputed birthdate inorder to subtract from current day
    bday_parse = Date.parse(@birthdate)
    today = Date.today
    time_difference = (today - bday_parse)
    # translates time_difference into years and sets to integer to get rid of float
    return (time_difference/365.25).to_i
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
  # sets user birthdate to @birthdate attribute
  new_person.birthdate = gets.chomp


  puts "First Name: " + new_person.first_name
  puts "Last Name: " + new_person.last_name
  puts "You are #{new_person.age} years old!"
  puts "Person Count: #{Person.number_of_people}"
end
