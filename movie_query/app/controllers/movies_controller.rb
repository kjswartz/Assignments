class MoviesController < ApplicationController
  def search
    @title = params["title"]
    # sets my initial query string
    query_url = "http://api.rottentomatoes.com/api/public/v1.0/movies.json"
    api_key = "2pwuxewequbju5pc2ksqfphx"
    # adds movie title to end of QUERY constent and stores raw json
    uri = URI("#{query_url}?apikey=#{api_key}&q=#{@title}")
    raw_json = Net::HTTP.get(uri)

    # returns movies array containing hash key values of supporting information
    results = JSON.parse(raw_json)
    movies = results["movies"]
    begin
      @movie_title = movies.first["title"]
      @movie_synopsis = movies.first["synopsis"]
      if @movie_synopsis.length < 1
        @movie_synopsis = "There was no synopsis listed in the first movie returned."
      end
    rescue
      @movie_title = "No such movie."
    end
  end
end
