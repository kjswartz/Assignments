class Company
  attr_accessor :name, :city, :employees

  def initialize
    @employees = []
  end

  # displays current directory
  def list
    @employees.each {|e| puts "ID: #{e.id} | #{e.name}, Location: #{e.city}"}
  end

  # Adds the passed employee to the company employee list
  def hire_employee(passed_text)
    @employees << passed_text
  end

  # Removes the passed employee from the company employee list
  def fire_employee(passed_text)
    @employees.delete_if { |e| e.id == passed_text.to_i }
  end

end
