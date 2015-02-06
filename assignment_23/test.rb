require 'active_support'
require 'active_support/all'
load 'invoice.rb'
load 'invoiceitem.rb'

# Then output each line item.
# Show a sub-total without the tax, then a line item for the tax, then the total.
# Bonus: make the invoice look like a real world invoice in the terminal
print "Name your invoice: "
invoice = gets.chomp
invoice = Invoice.new
invoice_loop = ""

while invoice_loop == ""
  invoice_item = InvoiceItem.new

  item_hash = {
    product_name: invoice_item.product_name,
    sale_price: invoice_item.sale_price,
    quantity: invoice_item.quantity,
    tax: invoice_item.tax}

  # store my hashed inovice item into invoice array
  invoice.items << item_hash

  puts "\n"
  puts invoice.items
  puts "\n"
  # rejects hashes within array where quantity = 0
  non_zero_quantities = invoice.items.reject { |hash| hash[:quantity] == 0 }

  #calculate how many items in items array
  puts "#{non_zero_quantities.size} items to be billed."
  puts "\n"

  # output each item
        # still working

  # calculate total cost
  pre_tax_array = invoice.items.map { |pricing| pricing[:quantity] * pricing[:sale_price] }
  # i now have an array of the costs of each item.
  # adds up all the numbers within array
  puts "pre-tax total: #{pre_tax_array.sum}"

  # taxation
  tax_array = invoice.items.map { |tax| tax[:quantity] * tax[:sale_price] * tax[:tax] }
  puts "taxes: #{tax_array.sum}"

  #total total
  puts "total owed: #{tax_array.sum + pre_tax_array.sum}"

  # add another item or end
  print 'Hit ENTER to add another Invoice Item, else enter "n": '
  invoice_loop = gets.chomp

end



  # invoice.items << invoice_item.product_name
  # invoice.items << invoice_item.sale_price
  # invoice.items << invoice_item.quantity
  # invoice.items << invoice_item.tax
