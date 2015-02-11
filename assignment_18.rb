# URL: http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=[your_api_key]
# Rotton Tomatoes API Key: 2pwuxewequbju5pc2ksqfphx
# calls on the net/HTTP and json libraries
require 'net/HTTP'
require 'json'
require 'cgi'

# sets my initial query string
QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=2pwuxewequbju5pc2ksqfphx'

# prompts user for movie to search
print "Please enter a movie to search: "

# loops through getting user response and searching for titles
loop do
  movie = gets.chomp

  # breaks loop if nothing is entered
  break if movie.length == 0
  puts"Searching....\n\n"

  # adds movie title to end of QUERY constent and stores raw json
  uri = URI(QUERY_URL + "&q=#{CGI.escape(movie)}")
  raw_json = Net::HTTP.get(uri)

  # returns movies array containing hash key values of supporting information
  parsed_data = JSON.parse(raw_json)['movies']

  # iterates movies array/hash pulling out values for title and synopsis
  parsed_data.each do |movie|
    puts "#{movie['title']}: #{movie['synopsis']} \n\n"
  end

  # buffer. Lets user search another title.
  puts "\n"
  print "Please enter another title to search: "
end

# goodbye message to let user know program is ending
puts "Thank You for searching! Goodbye!"
