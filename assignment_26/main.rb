require 'active_support'
require 'active_support/all'
require 'net/HTTP'
require 'json'
include ActiveSupport::NumberHelper
load 'invoice.rb'
load 'invoiceitem.rb'

# QUERY_URL = 'http://api.walmartlabs.com/v1/search'
# API_KEY = 'jgdvys8h2m46rp46czczk3qq'
# FORMAT = 'json'

# puts "Please enter a product to search for:"
# product_search = $stdin.gets.strip

# adds movie title to end of QUERY constent and stores raw json
# url = URI(QUERY_URL + "?query=#{product_search}&format=#{FORMAT}&apiKey=#{API_KEY}&sort=relevance")
# raw_json = Net::HTTP.get(url)

# # returns movies array containing hash key values of supporting information
# results = JSON.parse(raw_json)
# items = results.["items"]
#
# # display item results
# items.each do |item|
#   puts "#{item["itemID"]} | #{item["name"]} | #{item["salePrice"]}"
# end




# creates new invoice
invoice = Invoice.new

item_count = 0

# loop to collect invoice items
loop do

  puts 'Hit ENTER to exit, or input an item.'

  puts "Please enter a product to search for:"
    product_search = $stdin.gets.strip
    break if product_search == ""
    invoice_item = InvoiceItem.new(product_search)

    invoice_item.items.each do |item|
      puts "#{item["itemId"]} | #{item["name"]} | #{item["salePrice"]}"
    end













  # print "Product name: "
  #   invoice_item.product_name = gets.chomp
  #
  #
  # print "Unit price: "
  #   invoice_item.sale_price = gets.chomp.to_f
  # print "Quantity: "
  #   invoice_item.quantity = gets.chomp.to_i
  # print "Tax rate: "
  #   invoice_item.tax = gets.chomp.to_f
  # #creates tracking id number
  # item_count += 1
  # invoice_item.id = item_count
  #
  # # stores hashed inovice item into invoice array
  # invoice.items << invoice_item
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
