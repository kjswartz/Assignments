require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

# creates new invoice
invoice = Invoice.new

item_count = 0

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
  #creates tracking id number
  item_count += 1
  invoice_item.id = item_count

  # stores hashed inovice item into invoice array
  invoice.items << invoice_item
end

puts "\n"
# calls invoice method depicting how many items w/out 0 quantity in invoice
puts "Number of invoice items: #{invoice.total_items.size}"
puts "\n"

# output each item
invoice.total_items.each do |item|
  puts "Invoice Item ID: #{item.id}"
  puts "Product: #{item.product_name} | Unit Cost: #{item.sale_price} | Quantity: #{item.quantity} | Tax rate: #{item.tax}"
  puts "\n"
end

# displays pre-tax total
puts "Pre-tax cost: #{number_to_currency(invoice.pre_tax_cost.sum)}"

# displays total of tax expense
puts "Tax cost: #{number_to_currency(invoice.tax_cost.sum)}"

# total invoice cost
puts "Total owed: #{number_to_currency(invoice.total_cost.sum)}"
