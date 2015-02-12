class MoviesController < ApplicationController
  def search
    @title = params['title']
    # sets my initial query string
    query_url = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json'
    api_key = '2pwuxewequbju5pc2ksqfphx'
    # adds movie title to end of QUERY constent and stores raw json
    uri = URI("#{query_url}?apikey=#{api_key}&q=#{@title}")
    raw_json = Net::HTTP.get(uri)

    # returns movies array containing hash key values of supporting information
    results = JSON.parse(raw_json)['movies']
    # sets first hash result to movie
    movie = results.first
    begin
      # set variables
      @movie_title = movie['title']
      @movie_synopsis = movie['synopsis']
        @movie_synopsis = 'There was no synopsis.' if @movie_synopsis.length < 1
      @movie_year = movie['year']

      @movie_mpaa_rating = movie['mpaa_rating']

      @movie_runtime = movie['runtime']

      @movie_rating_audience = movie['ratings']['audience_rating']
      @movie_rating_a_score = movie['ratings']['audience_score']
      @movie_rating_critics =  movie['ratings']['critics_rating']
      @movie_rating_c_score = movie['ratings']['critics_score']

      @movie_release_theater = movie['release_dates']['theater']
      @movie_release_dvd = movie['release_dates']['dvd']

      @movie_poster_thumb = movie['posters']['thumbnail']
      # image sizes = det / ori / pro / tmb
      @movie_poster_original = @movie_poster_thumb.gsub(/tmb.jpg/, 'ori.jpg')

      # need to iterate over abridged_cast and
    rescue
      @movie_title = 'No such movie.'
    end
  end
end
