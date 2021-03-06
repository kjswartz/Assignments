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
  end

  # calculate total of all it's invoice items rejecting 0 quantities
  def total_items
    @items.reject { |item| item.quantity == 0 }
  end

  # calculate total pre-tax cost.
  def pre_tax_cost
    # Calls on the key's value
    total_items.map { |price| price.quantity * price.sale_price }
    # I now have an array of the costs of each item.
  end

  # taxation
  def tax_cost
    total_items.map { |tax| tax.quantity * tax.sale_price * tax.tax }
  end

  # final total cost
  def total_cost
    pre_tax_cost + tax_cost
  end

end
