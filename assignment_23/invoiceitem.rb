class InvoiceItem
attr_accessor :product_name, :sale_price, :quantity, :tax


  # so each time an InvoiceItem object is created it should ask for the attributes
  # then it should store that item into the Invoice items array
  def initialize
    questions
  end

  def questions

    print "product name: "
      @product_name = gets.chomp
    print "sale price: "
      @sale_price = gets.chomp.to_f
    print "quantity: "
      @quantity = gets.chomp.to_i
    print "tax: "
      @tax = gets.chomp.to_f

  end


end
