class Post
  require 'active_support'
  require 'active_support/all'
  attr_accessor :name, :summary, :body, :published_date, :word_count

  def initialize(name)
    @published_date = Date.current
    @name = name
  end

  def word_count
    @word_count = @body.split.length
  end

  def summary
    @summary = @body.truncate(30)
  end




end
