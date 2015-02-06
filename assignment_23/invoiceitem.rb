class InvoiceItem
attr_accessor :product_name, :sale_price, :quantity, :tax


  # so each time an InvoiceItem object is created it should ask for the attributes
  # then it should store that item into the Invoice items array
  def initialize
    questions
  end

  def questions

    print "Product name: "
      @product_name = gets.chomp
    print "Unit price: "
      @sale_price = gets.chomp.to_f
    print "Quantity: "
      @quantity = gets.chomp.to_i
    print "Tax rate: "
      @tax = gets.chomp.to_f

  end


end
