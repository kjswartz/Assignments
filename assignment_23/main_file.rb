require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

# creates new invoice
invoice = Invoice.new

#counter for invoice ID
invoice_id = 0
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
  invoice_id += 1

  # stores items in a hash with key values
  item_hash = {
      product_name: invoice_item.product_name,
      sale_price: invoice_item.sale_price,
      quantity: invoice_item.quantity,
      tax: invoice_item.tax,
      id: invoice_id.to_i}

  # stores hashed inovice item into invoice array
  invoice.items << item_hash
end

puts "\n"
# calls invoice method depicting how many items w/out 0 quantity in invoice
puts "Number of invoice items: #{invoice.total_items.size}"
puts "\n"
# displays product_names of user inputed (non-0) quantity invoice items

# output each item
invoice_output = invoice.total_items.map {|hash| hash.values }
invoice_output.each do |item|
  puts "Invoice Item ID: #{item[4]}"
  puts "Product: #{item[0]} | Unit Cost: #{item[1]} | Quantity: #{item[2]} | Tax rate: #{item[3]}"
  puts "\n"
end

# displays pre-tax total
puts "Pre-tax cost: #{number_to_currency(invoice.pre_tax_cost.sum)}"

# displays total of tax expense
puts "Tax cost: #{number_to_currency(invoice.tax_cost.sum)}"

# total invoice cost
puts "Total owed: #{number_to_currency(invoice.total_cost.sum)}"
