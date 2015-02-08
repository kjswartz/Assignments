require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

# Then output each line item.
# Show a sub-total without the tax, then a line item for the tax, then the total.
# Bonus: make the invoice look like a real world invoice in the terminal
print "Name your invoice: "
invoice = gets.chomp
invoice = Invoice.new


# loop to collect invoice items
loop do
  invoice_item = InvoiceItem.new
  puts 'Hit ENTER to exit, or input an item.'

  print "Product name: "
    invoice_item.product_name = gets.chomp
  # break loop when user hits ENTER on product name
  break if invoice_item.product_name == ""
  print "Unit price: "
    invoice_item.sale_price = gets.chomp.to_f
  print "Quantity: "
    invoice_item.quantity = gets.chomp.to_i
  print "Tax rate: "
    invoice_item.tax = gets.chomp.to_f

  # stores items in a hash with key values
  item_hash = {
      product_name: invoice_item.product_name,
      sale_price: invoice_item.sale_price,
      quantity: invoice_item.quantity,
      tax: invoice_item.tax}

  # stores hashed inovice item into invoice array
  invoice.items << item_hash
end

puts "\n"
# calls invoice method depicting how many items w/out 0 quantity in invoice
puts "Number of invoice items: #{invoice.total_items.size}"

# displays product_names of user inputed (non-0) quantity invoice items
invoice.output_items
puts "\n"

# displays pre-tax total
puts "Pre-tax cost: #{number_to_currency(invoice.pre_tax_cost.sum)}"

# displays total of tax expense
puts "Tax cost: #{number_to_currency(invoice.tax_cost.sum)}"

# total invoice cost
puts "Total owed: #{number_to_currency(invoice.total_cost.sum)}"
