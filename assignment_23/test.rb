load 'invoice.rb'
load 'invoiceitem.rb'

# Then output each line item.
# Show a sub-total without the tax, then a line item for the tax, then the total.
# Bonus: make the invoice look like a real world invoice in the terminal
puts "who would you like to bill?"
billing = gets.chomp
