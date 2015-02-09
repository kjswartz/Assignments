load 'employee.rb'
load 'company.rb'

# creates new company class
company = Company.new
print "Company name: "
company.name = gets.chomp
print "Company city: "
company.city = gets.chomp

puts "\n"
puts "Input all of your employees. Press ENTER on name when all finished."

# id counter to track employees
employee_id = 0

# loop to collect employees
loop do
  employee = Employee.new
  puts "\n"

  # collects employee name, city, and ID
  print "Employee name: "
  employee.name = gets.chomp
  break if employee.name == ""
  print "Employee city: "
  employee.city = gets.chomp
  employee_id += 1
  employee.id = employee_id

  company.hire_employee(employee)
end

# Display employees
puts "\n"
puts "#{company.name} Current Employee Directory"
company.list

# loop to hire and fire employees
loop do
  puts "\n"
  puts 'Press ENTER to finish or "H to hire and "F" to fire employees: '
  response = gets.chomp.capitalize
  break if response == ""

  # case for Hire and Fire responses
  case
    # Hiring employees
    when response == "H"
      loop do
        employee = Employee.new
        puts "\n"
        puts "Enter new employees. Press ENTER on name when finished."
        print "Employee name: "
        employee.name = gets.chomp
        break if employee.name == ""
        print "Employee city: "
        employee.city = gets.chomp
        employee_id += 1
        employee.id = employee_id

        company.hire_employee(employee)

        # Display updated listing
        puts "\n"
        puts "#{company.name} Current Employee Directory"
        company.list
      end

    # firing employees
    when response == "F"
      loop do
        # Display current directoy with IDs
        puts "\n"
        puts "#{company.name} Current Employee Directory"
        company.list

        puts "\n"
        print "Press ENTER to exit or input ID of an employee to terminate: "
        terminate_id = gets.chomp
        break if terminate_id == ""

        # removes employee from company employee array
        company.fire_employee(terminate_id)

        # Displays updated directory
        puts "\n"
        puts "#{company.name} Current Employee Directory"
        company.list
      end
  end

end

# Displays finial Directoy
puts "\n"
puts "#{company.name} Finalized Employee Directory"
company.list
