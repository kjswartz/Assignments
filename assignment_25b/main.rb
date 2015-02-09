load 'blog.rb'
load 'post.rb'

# main blog loop
loop do
  print 'Would you like to create a blog (y/n): '
  blog_response = gets.chomp.downcase
  break if blog_response == "n"

  print  'Please name your blog: '
  blog_name = gets.chomp
  blog = Blog.new
  blog.name = blog_name
  print 'Please enter a user_name: '
  blog.user_name = gets.chomp

    #post loop
    loop do
      print 'Would you like to create a post (y/n): '
      post_response = gets.chomp.downcase
      break if post_response == "n"

      print 'Please name your post: '
      post_title = gets.chomp
      post = Post.new
      post.name = post_title
      puts "Please enter your blog post: "
      blog_body = gets.chomp
      post.body = blog_body

      # stores post into blog posts array
      blog.posts << post
  end

  # we're within blog loop now. displaying all posts
  puts "\n"
  puts blog.name
  blog.posts.each do |post|
   puts "Post Title: #{post.name}"
   puts "Post Summary: #{post.summary}"
   puts "Post: #{post.body}"
   puts "Date created: #{post.published_date}"
   puts "There are #{post.word_count} words in this posting."
  end

end
