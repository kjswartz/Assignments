class Company
  attr_accessor :name, :city, :employees

  def initialize
    @employees = []
  end

  # displays current directory
  def list
    @employees.map {|hash| hash.values }.each {|e| puts "ID: #{e[0]} | #{e[1]}, Location: #{e[2]}"}
  end

  # Adds the passed employee to the company employee list
  def hire_employee(passed_text)
    @employees << passed_text
  end

  # Removes the passed employee from the company employee list
  def fire_employee(passed_text)
    @employees.delete_if { |hash| hash[:id] == passed_text }
  end

end
