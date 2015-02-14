load 'blog.rb'
load 'post.rb'

# main blog loop
loop do
  print 'Would you like to create a blog (y/n): '
  blog_response = gets.chomp.downcase
  break if blog_response.empty? || blog_response == "n"
  #loops until user inputs name
  name = ''
  while name.empty?
    print 'please enter a blog name: '
    name = gets.chomp
  end
  #loops until user inputs user_name
  user_name = ''
  while user_name.empty?
    print 'Please enter a user_name: '
    user_name = gets.chomp
  end
  blog = Blog.new(name, user_name)

    #post loop
    loop do
      print 'Would you like to create a post (y/n): '
      post_response = gets.chomp.downcase
      break if post_response.empty? || post_response == "n"
      # loops until user enters a post title
      name = ''
      while name.empty?
        print 'Please enter a title for your post: '
        name = gets.chomp
      end
      post = Post.new(name)
      # loops until user enters text
      post_body = ''
      while post_body.empty?
        puts "Please enter your blog post: "
        post_body = gets.chomp
      end
      post.body = post_body
      # stores post into blog posts array
      blog.posts << post
  end

  # we're within blog loop now. displaying all posts
  puts "\n"
  puts "User: #{blog.user_name}"
  puts "Blog: #{blog.name}"
  blog.posts.each do |post|
   puts "\n"
   puts "Post Title: #{post.name}"
   puts "Post Summary: #{post.summary}"
   puts "Post: #{post.body}"
   puts "Date created: #{post.published_date}"
   puts "There are #{post.word_count} words in this posting."
  end

end
