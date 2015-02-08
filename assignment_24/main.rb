load 'employee.rb'
load 'company.rb'

company = Company.new
print "Company name: "
company.name = gets.chomp
print "Company city: "
company.city = gets.chomp

puts "\n"
puts "Please enter all of your employees. Press ENTER when all finished."

# id counter
employee_id = 0

# loop to collect employees
loop do
  employee = Employee.new
  employee_id += 1

  print "Employee name: "
  employee.name = gets.chomp
  break if employee.name == ""
  print "Employee city: "
  employee.city = gets.chomp

  # stores employees into hash with key values
  employee_hash = {
      id: employee_id,
      name: employee.name,
      city: employee.city}

  # stores hash into employees array
  company.employees << employee_hash
end

puts "\n"
# Display employees
puts "#{company.name} Employees"
company.list
puts "\n"


loop do
puts 'Enter  "H to hire and "F" to fire employees: '
response = gets.chomp.capitalize
break if response == ""

  case
    when response == "H"
      loop do
        #company.hire_employee
        employee = Employee.new
        employee_id += 1

        print "Employee name: "
        employee.name = gets.chomp
        break if employee.name == ""
        print "Employee city: "
        employee.city = gets.chomp

        employee_hash = {
            id: employee_id,
            name: employee.name,
            city: employee.city}

        company.employees << employee_hash
        puts "\n"
        puts "Current Employee Directory"
        company.list
      end

    when response == "F"
      loop do
        print "Enter the ID of the employee to terminate: "
        terminate_id = gets.chomp.to_i
        company.fire_employee(terminate_id)
        puts "\n"
        puts "Current Employee Directory"
        company.list
        print "Terminate more employees? (y/n): "
        ter_res = gets.chomp.downcase
        break if ter_res == "n"
      end
  end
  
end

puts "\n"
puts "Current Employee Directory"
company.list
