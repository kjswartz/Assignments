class Post
  require 'active_support'
  require 'active_support/all'
  attr_accessor :name, :summary, :body, :published_date, :word_count

  def initialize
    @published_date = Date.current
    @name = ''
    while @name.length < 1
      print 'Please enter a title for your post: '
      @name = gets.chomp
    end
  end

  def word_count
    @word_count = @body.split.length
  end

  def summary
    @summary = @body.truncate(30)
  end




end
