require 'active_support'
require 'active_support/all'
require 'net/HTTP'
require 'json'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'jgdvys8h2m46rp46czczk3qq'
FORMAT = 'json'

# creates new invoice
invoice = Invoice.new

item_count = 0

# loop to collect invoice items
loop do
  puts 'Hit ENTER to exit, or input an item.'

  puts "Please enter a product to search for:"
  product_search = $stdin.gets.strip
  product_search.gsub!(' ', '+') if product_search.include?(' ')
  break if product_search == ""
  invoice_item = InvoiceItem.new

  url = URI(QUERY_URL + "?query=#{product_search}&format=#{FORMAT}&apiKey=#{API_KEY}&sort=relevance")
  raw_json = Net::HTTP.get(url)

  # returns movies array containing hash key values of supporting information
  results = JSON.parse(raw_json)
  items = results["items"]

  # displays results
  items.each do |item|
    puts "#{item["itemId"]} | #{item["name"]} | #{item["salePrice"]}"
  end

  #gets product ID user wants to add to invoice
  print 'Enter a product ID to add item to invoice: '
  invoice_item.id = gets.chomp
  break if invoice_item.id == ""

  # items is an array of hashes. Need to identify which hash to pull from within.
  items.each do |item|
    # need to set invoice_item.id to FIXNUM class for matching
    if item["itemId"] == invoice_item.id.to_i
      # set my class instance variables
      invoice_item.product_name = item["name"]
      invoice_item.sale_price = item["salePrice"]
    end
  end

  print "Quantity: "
    invoice_item.quantity = gets.chomp.to_i
  print "Tax rate: "
    invoice_item.tax = gets.chomp.to_f

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
