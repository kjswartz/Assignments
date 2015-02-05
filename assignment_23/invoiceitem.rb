class InvoiceItem
attr_accessor :product_name, :sale_price, :quantity, :tax

  # item counter to track InvoiceItems objects created
  @@item_counter = 0

  # so each time an InvoiceItem object is created it should ask for the attributes
  # then it should store that item into the Invoice items array
  def initialize
    @@item_counter += 1

    print "product name: "
      self.product_name = gets.chomp
    print "sale price: "
      self.sale_price = gets.chomp
    print "quantity: "
      self.quantity = gets.chomp
    print "tax: "
      self.tax = gets.chomp

    #return {"name" => @product_name, "price" => @sale_price, "quantity" => @quantity, "taxt" => @tax}
      #invoice_hash = Hash[product_name, ]

  # store these values into a one hash (key, value) that will get
      # pushed into Invoice class items array

  end

  def self.number_of_items
    @@item_counter
  end




end
