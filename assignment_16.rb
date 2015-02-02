require 'net/http'

uri = URI('http://www.scifiscripts.com/scripts/5thelement.txt')
response = Net::HTTP.get(uri)

script = File.new("fifth_element.txt", "w")
script.write(response)
script.close
