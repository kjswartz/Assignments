class InvoiceItem
  require 'net/HTTP'
  require 'json'
  attr_accessor :product_name, :sale_price, :quantity, :tax, :id, :url, :raw_json, :product_search, :results, :items

  @@QUERY_URL = 'http://api.walmartlabs.com/v1/search'
  @@API_KEY = 'jgdvys8h2m46rp46czczk3qq'
  @@FORMAT = 'json'

  def initialize(product_search)
    @product_search = product_search
    api_search
  end

  def api_search
    @url = URI(@@QUERY_URL + "?query=#{@product_search}&format=#{@@FORMAT}&apiKey=#{@@API_KEY}&sort=relevance")
    @raw_json = Net::HTTP.get(@url)

    # returns movies array containing hash key values of supporting information
    @results = JSON.parse(@raw_json)
    @items = @results["items"]

  end

end
