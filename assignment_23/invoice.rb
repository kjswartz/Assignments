class Invoice
# Invoice should be created first since it is the bill.
# the Invoice should contain all the billable items (InvoiceItem)
# so create invoice...add InvoiceItems one at a time...store in items array
# calculate totals


attr_accessor :items


  # create arrary to hold invoice items
  def initialize
    # array of all items created from InvoiceItems class
    @items = []
    @items << InvoiceItem.new
  end

  # def add_item
  #   @items << InvoiceItem.new
  # end

  def total_items
    #  Create an instance method in Invoice that will
    #       calculate a total of all it's invoice items

    # reject invoice items that are zero
    # @items.recject { |item| item == 0 }
  end





end