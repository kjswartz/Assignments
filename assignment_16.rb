require 'net/http'
# pulls txt from web and stores it in response variable.
uri = URI('http://www.scifiscripts.com/scripts/5thelement.txt')
response = Net::HTTP.get(uri)
# creates a new file called fifth_element
script = File.new("fifth_element.txt", "w")
# writes text stored in response variable to fifth_element.txt file
script.write(response)
script.close
