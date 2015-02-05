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
    @first_name, @last_name = user_name.split
    # The above simplified code does the same as below!!!
      # names = user_name.split
      # @first_name = names[0]
      # @last_name = names[1]
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
    time_difference = (Date.today - bday_parse)
    # translates time_difference into years and sets to integer to get rid of float
    return (time_difference/365.25).to_i
  end

end
