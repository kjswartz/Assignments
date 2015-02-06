load 'invoice.rb'
load 'invoiceitem.rb'

# Then output each line item.
# Show a sub-total without the tax, then a line item for the tax, then the total.
# Bonus: make the invoice look like a real world invoice in the terminal
print "Name your invoice: "
invoice = gets.chomp
invoice = Invoice.new

loop do
  puts "Invoice Item: "
  invoice_item = gets.chomp
  invoice_item = InvoiceItem.new

  item_hash = {product_name: invoice_item.product_name, sale_price: invoice_item.sale_price, quantity: invoice_item.quantity, tax: invoice_item.tax}
    if item_hash[:quantity] == 0
      item_hash = nil
    else
      invoice.items << item_hash
    end

  puts invoice.items.size
  puts invoice.items.class
  puts invoice.items[0]


  print "Do you want to add another item? "
  response = gets.chomp
  break if response == 'n'
end



  # invoice.items << invoice_item.product_name
  # invoice.items << invoice_item.sale_price
  # invoice.items << invoice_item.quantity
  # invoice.items << invoice_item.tax
