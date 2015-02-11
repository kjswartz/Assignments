class MoviesController < ApplicationController
  def search
    # sets my initial query string
    query_url = "http://api.rottentomatoes.com/api/public/v1.0/movies.json"
    api_key = "2pwuxewequbju5pc2ksqfphx"
    # prompts user for movie to search
    print "Please enter a movie to search: "

    # loops through getting user response and searching for titles
    loop do
      movie = gets.chomp

      # breaks loop if nothing is entered
      break if movie == ""

      # replace spaces with %20
      movie.gsub!(' ', "+") if movie.include?(' ')

      # adds movie title to end of QUERY constent and stores raw json
      uri = URI("#{query_url}?apikey=#{api_key}&q=#{movie}")
      raw_json = Net::HTTP.get(uri)

      # returns movies array containing hash key values of supporting information
      results = JSON.parse(raw_json)
      movies = results['movies']
      # iterates movies array/hash pulling out values for title and synopsis
      # first_movie = movies.first
      @movie_title = movies.first["title"]
      @movie_synopsis = movies.first["synopsis"]

      # buffer. Lets user search another title.
      puts "\n"
      print "Please enter another title to search or pree ENTER to exit: "
    end
  end
end
