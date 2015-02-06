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

puts "\n\n"

  # calls invoice method depicting how many items w/out 0 quantity in invoice
  puts "Number of invoice items: #{invoice.total_items.size}"

  # displays product_names of user inputed (non-0) quantity invoice items
  puts  invoice.output_items

  # displays pre-tax total
  puts "Pre-tax cost: #{invoice.pre_tax_cost.sum}"

  # displays total of tax expense
  puts "Tax cost: #{invoice.tax_cost.sum}"

  # total invoice cost
  puts "Total owed: #{invoice.total_cost.sum}"


  # add another item or end
  print 'Hit ENTER to add another Invoice Item, else enter "n": '
  invoice_loop = gets.chomp

end
