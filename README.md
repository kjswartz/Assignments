# Assignments
Iron Yard Assignments


###Assignment 4
Use the following code to create a Ruby file and run it. The file can be run either by `ruby filename` or, if you choose, you can set the executable bit (`chmod +x filename`) and add a shebang.

    puts 3 > 4
    puts (3 * 2) > 10
    puts 2 == 3
    puts (1 > 0) && (2 <= 1)
    puts 2 != 2
    puts (14 <= 10) || (2 >= 3)
    puts 10 % 2 == 1
    puts (10 ** 2) == 1000
    puts 1000 / 300 > 4

Now change the code above so that when you run it, all the equations are true.

Please create a gist of the final code and paste the url of the gist in an issue comment.

https://gist.github.com/kjswartz/b306539d5436f36cb790

###Assignment 5
* [Read about symbols](http://www.troubleshooters.com/codecorn/ruby/symbols.htm)
* Read [Rubyists: Just use double-quoted strings.](http://viget.com/extend/just-use-double-quoted-ruby-strings), but also read the comments. They are the reason I'm having you read this article.

###Assignment 6
* Create code for each comment in [this gist](https://gist.github.com/brianburridge/79de494772daf7976ea9)
* Run the code and paste the output into your issue as a comment for this assignment
* It should list all the proper class names and all class tests should result in 'true'
* Before you run it, can you guess what will happen with the constant code you've created?

###Assignment 7
* Create a Ruby script to ask the user for their name and then wish them a Happy Birthday by name
* Add some comments to your code

###Assignment 8
* Request input of a number from the user.
* Iterate the number of times indicated by the input number
* Within the loop, print the number of the iteration
* Do this for each of these methods of looping: while, for i in rage, loop, until, .times with counter, until, range
* All should print from 1 to the number input by the user

###Assignment 9
* [Read](https://www.bluebox.net/insight/blog-article/using-regular-expressions-in-ruby-part-1-of-3)
* [Review](http://lzone.de/Ruby-Regex-Examples)
* [Play](http://rubular.com/)
* Write a Ruby script to do the following:

1. Take the string "Hello World" and split it on whitespace. Show two ways to do this.
2. Use the Peter Piper tongue twister and split it on 'pick'
3. Use gsub only to change the first passage to the second in the fewest amount of commands:

    Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

    Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

4. Write code to determine how many times 'sh' occurs in the following phrase:

    There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!

5. In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
6. Match the word `foot` but not `football` in this phrase: "He played football despite having an artificial foot.""
7. Match the last `sits` in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

###Assignment 10
* Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
* Be sure if the user enters whitespace on either side of the input, that you remove it first
* For the original text input by the user, count how many words (as separated by spaces) and print this count.

###Assignment 11
* Read [Ruby styleguide](https://github.com/styleguide/ruby)
* All homework assignments must now comply to the ruby style guide

###Assignment 12
* Create an array of questions (Strings)
* Iterate over the array using each, asking each question to the user
* Bonus: Save all the answers with the questions, and print a summary at the end

###Assignment 13
* Create a guessing game
* The user must guess the number chosen by the app
* Provide feedback to the user as to if their guess is lower or higher than the number
* Count the number of guesses and output at the end

###Assignment 14
* Using the structure of a class as I've laid out in this [gist](https://gist.github.com/brianburridge/7e98d358dee03c6b6060), finishing creating the PigLatin class to translate a word into pig latin
* Bonus: modify the app to convert an entire phrase (one word at a time)
* Note the pig latin rules in the comment of the skeleton app

###Assignment 15
* Copy and then modify assignment 12 to read the questions from a file instead of the hard coded array
* Load them into an array so the rest of the program can remain the same
* If your assignment 12 is coded correctly, you won't have to change the part that asks questions
* Can be done with two lines of code
* Remember to have the text file of questions in the same directory where your Ruby code is

###Assignment 16
* Pick a screenplay from this list, http://www.simplyscripts.com/ (in text)
* Read in the screenplay and write it to a local file

###Assignment 17
* Read about [HTTP](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)
* Read review on [using JSON in Ruby](https://hackhands.com/ruby-read-json-file-hash/)
* Look thru some [JSON Examples](http://json.org/example)
* Copy assignment 15 and modify to now read in questions from a JSON file
* This means you need to create a JSON file of you questions
* Read and parse the JSON into an array so the rest of the app remains the same

###Assignment 18
* http://developer.rottentomatoes.com/
* Use Rotten Tomato's movie querying script to create a command line app which prompts the user for a movie title
* Using the entered movie title, search via the API for the movie's synopsis and output to the user
* If more than one movie comes back, show all the movie title matches with their synopsis

###Assignment 19
* Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.
* Should use the same code you wrote before, but now you are extending the String class and putting the functionality in there.

###Assignment 20
* Note: Please check in your Gemfile and Gemfile.lock
* write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
* the script should do the following when run:

1) Show the date of the beginning of the current week
2) Show what the date will be in 30 days
3) Show what day of the week today's date will fall on next year
4) Show what day of the week the user's birthday will be on this year
5) Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
6) Using the String class, truncate a phrase the user enters to 20 letters
7) Using the Array class, convert an array of three words to a sentence with one command

* You'll need the following Rails extensions that come with ActiveSupport:
- http://api.rubyonrails.org/v4.0.3/classes/Date.html
- http://api.rubyonrails.org/v4.0.3/classes/String.html
- http://api.rubyonrails.org/v4.0.3/classes/Array.html
- http://api.rubyonrails.org/v4.0.3/classes/Numeric.html

###Assignment 21
* Write a Person class and some code to use it, following the directions below.

#### First

* Create a Person class with attributes: first name, last name, and birthdate.
* First name and last name should not be able to be written to, but should be readable.
* Birthdate can be set and read.
* Create a public instance method called `name` that takes the name and sets the first name and last name instance variables. This is so the first name and last name attributes are set by passing in one name.
* Create a public instance method called `age` to calculate and return the user's age.
* Now, outside the Person class, ask the user their information and use it to create the Person object.
* After asking each user their information, output the user's age.

#### Next

* Create a class variable that will count the number of people that enter in their information. After you output the person's age, also output the number of person they are so far (using the class variable).
* Loop to allow another user to enter their information. (exit when user enters \q for name). Create a Person object for each user.
* Create a private method called `calculateAge`. This should contain the functionality you previously had in the `age` method. The public `age` method should now call this new private `calculateAge` method.

###Assignment 22
Read How Do Gems Work?
Read Understanding Ruby Blocks, Procs and Lambdas

###Assignment 23
Create an InvoiceItem class and an Invoice class (two classes in two separate files)
The InvoiceItem class should have the following attributes: product_name, sale_price, quantity, tax percentage
The invoice class should have a getter and setter for an attribute called: items to hold an array of all the InvoiceItems
Create an instance method in Invoice that will calculate a total of all it's invoice items
Use reject or select methods in order to remove any InvoiceItem objects that have a zero quantity
Create an instance method in Invoice to sum up the invoice items and get a total
Ask the user to enter in the attributes for each invoice item, hitting ENTER on product name when done
With each invoice item entered, create the object and add it to the collection of invoice items within a single Invoice object.
Then output each line item.
Show a sub-total without the tax, then a line item for the tax, then the total.
Bonus: make the invoice look like a real world invoice in the terminal

###Assignment 24
Take the Employee and Company classes, and create functionality to allow the company to hire and fire an employee.
Create a Ruby app that will use those classes to do the following:
prompt the user to enter information for the company.
prompt the user to enter each employee. It will then "hire" each of them.
show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id.
fire the employee by id and show an updated list with that employee no longer in it.

###Assignment 25
Design and code a Blog and Post class.
These classes should model a system where a user can create a blog, which will have posts.
A Blog can have a name, a user_name, and the collection of posts
A Post can have a name, a summary, the body of the post, the published date, and a word count.
Since both a blog and a post MUST have a name, override the initializer so that when an object of either class is created, a name must be supplied.

###Assignment 26
Take what we did in class with the Walmart API, and combine it with what you created in assignment 23
Prompt the user to search for a product and allow the user to enter the product id (from the search results). For the product indicated, create an InvoiceItem object and add it to your Invoice object
After the user adds a product to the invoice (using your InvoiceItem class), loop and allow them to search again
When the user hits ENTER instead of a SEARCH term or a product id, print out the same result as in Assignment 23.
Bonus to the Bonus: add a category attribute to your InvoiceItem and set it from the Walmart API. Include the category on the output invoice.

###Assignment 27
Sign up for a codepen account (login with GitHub)
Create one codepen with HTML and CSS of anything.

###Assignment 28
Read Separation of Concerns
Read MVC
Refer to HTML Element Reference
Refer to CSS Reference
Create a home page with the title of your blog, and your name as the author
List out at least 3 pretend blog posts with their title, word count and summary. Hyperlinking them to their own HTML Post pages.
On the individual Post pages, should show a link back to the home page, the blog title, the post title, the body, and the published date.
You should have four HTML files that all link to each other and one external css.
Include an image in at least one blog post
Bonus: Use at least one custom font from Google
Put these files in an assignment_28 folder and check into github

###Assignment 29
Review Ruby Rails guide up to section 5.
Create a new rails app called movie_query
This app and it's folder should be inside your assignments app.
Generate a 'movies' controller with a 'search' action.
Paste all your Ruby code from the movie query app into your search action
Note: you don't need to require active_support any more. Try not requiring libraries until you get an error.
Put the first movie's synopsis in the results into an instance variable
In your ERB, index.html.erb, use Rails expression display the movie synopsis

###Assignment 30
Alter your existing app so you are no longer returning the synopsis in an instance variable, but instead returning the entire first movie result. We will assume for this exercise that the first movie that comes back is the one we want.
Using all the information returned for the movie, recreate a movie information page like this one on IMBD or this one on Rotten Tomatoes. Note it does not have to have their branding but should nicely layout as much of the movie information as possible. Ex: poster, ratings, synopsis, tomatometer, some cast, running time, etc.
The goal is to create your own movie information page as though you were creating one for a client's movie app.

###Assignment 31
* Review the [UrlHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html)
* Review the [AssetTagHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html)
* Review the [table](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table) HTML tag
* Create a new Rails app. It should go inside your _assignments_ repository.
* This will be a blog app.
* You'll want a posts controller with an index action and actions for the individual posts.
* The "root" of your blog app should be the posts index page, showing links to the posts.
* Add an about me page with real information about yourself. This should go in a 'welcome' controller. Tip: don't forget to setup your routes.
* Use Twitter Bootstrap to make this look as nice and as real as you can make it. I'm going to pick the best and show it to other instructors at TIY in our weekly meeting. Remember you can install Bootstrap using the simple CDN method.
* Create and use at least one helper method. It could be used to format a date, for example.
* Use the image_tag in at least one place.

###Assignment 32
* Change your movie query app and add an HTML form to prompt the user for a movie title and submit to the controller/action you already have.
* You can still use the HTTP GET method in this case, because we want the old way of passing it in the request url to work.
* Use bootstrap to improve the look of the form.
* Refer to [Bootstrap form stylings](http://getbootstrap.com/css/#forms)
* Refer to [Rails form helpers](http://guides.rubyonrails.org/form_helpers.html)

###Assignment 33
* Read about [the available data types](http://jasonshultz.com/what-are-the-rails-4-activerecord-migration-datatypes/)
* Read about [migrations](http://guides.rubyonrails.org/migrations.html)
* Review [ActiveRecord basics](http://guides.rubyonrails.org/active_record_basics.html)
* Read the generate section of [this guide](http://guides.rubyonrails.org/command_line.html#rails-generate). Note: this will review creating scaffolds
* https://github.com/ctran/annotate_models
* Create a new rails app and a scaffold for any kind of object you would like to track in your app: People, Movies, Books, Beer, etc.
* Present the user with a home page telling them what your site is "tracking", with a link to the first CRUD page.
* User should be able to create, update, delete and list the items they have created.
* Refer to [Annotate gem](https://github.com/ctran/annotate_models)
* Install annotate gem and run it on your models
* Push the new Rails app to Github

###Assignment 34
* [Read Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
* [Read Active Record Associations](http://guides.rubyonrails.org/association_basics.html)
* Continuing with your app from assignment 33, add a second model (use the migration generator) and use a _reference_ and _belongs_to/has_many_ relationship.
* Also add at least three validations between the two models.
* Test your model relationships in the rails console to be sure they work.

###Assignment 35

* Create a new Rails app, in it's own folder (not within the previous _Assignments_ folder)
* This new Rails app should have three models. Two of them should have scaffolds. They should all have associations, so pick three models that are related in some way.
* Ensure all associations can be set within your Rails app views (no longer just in the console)
* On the index view of a parent model, show the count of children it has (the has_many relationship). Example: how many books does that library have?
* Add a _Procfile_ to your app with this line: `web: bundle exec thin start -p $PORT` (note: this is to get it working on Heroku)
* Add the following to your Gemfile (please read the comments to remind yourself why each Gem is necessary):

        # User the 'thin' server instead of the default webrick
        gem 'thin'

        # Use postgres and the Heroku rails gem for Heroku
        group :production do
          gem 'rails_12factor'
        end

* Deploy to Heroku


###Assignment 36
* Add some seed data to assignment 35 using the Faker gem.
* Add image upload support to your Rails app from assignment 35, using [CarrierWave gem](https://github.com/carrierwaveuploader/carrierwave).
* You can add image uploads to any existing models in that app.
* For this assignment, use _file_ storage.
* Your user should be able to browse for a local image and upload it along with your other model attributes in the form.
* The uploaded images should show on both the index page (thumbnail size) and the show page (a larger size).
* Feel free to experiment with sizes and versions.

###Assignment 37
* Convert the app from assignment 36 to use [Amazon S3, via Fog](https://github.com/carrierwaveuploader/carrierwave#using-amazon-s3), instead of local file storage.
* Remember to use the [dotenv gem](https://github.com/bkeepers/dotenv) and `heroku config` so you aren't storing your S3 private access keys in GitHub
* Deploy to Heroku (and GitHub as always)

###Assignment 38
* Note: This is a bonus assignment for those all caught up on homework.
* Using the app from 36 and 37, add checkboxes to a form for a many to many relationship.
* Review the [Railscast for this topic](http://railscasts.com/episodes/17-habtm-checkboxes-revised
)

###Assignment 39
* Modify the app from assignment 36-38, to have a User model
* Also, modify any models that should be scoped to a User, to belong to a user object
* Only show the user's records when in that context
* Create a User guest record in the seed file
* Default your app to always use that User
* Modify at least one model's create to be automatically associated with that User when it's created.
* Deploy to Heroku

###Assignment 40
* Add [ActiveAdmin](https://github.com/activeadmin/activeadmin) to your current application
* Review the [documentation](https://github.com/activeadmin/activeadmin/blob/master/docs/0-installation.md)
* Create an active admin resource for every model in your app
* Do some customization
* Ensure all forms save and allow the user to set the relationships
* Deploy to Heroku

###Assignment 41
* Read [Understanding REST in Rails 3
](http://old.thoughtsincomputation.com/posts/understanding-rest-in-rails-3)
* Read the [Rails Routing Guide](http://guides.rubyonrails.org/routing.html)

###Assignment 42
* Should have these models: User, Pin, Board
* The home page should show "pins" from all users, and not in a table format but a grid
* Should use pagination with Kaminari on the pin page
* User should be able to create new pins, uploading an image to represent them.
* A Pin should have these attributes and belong to the user who added it: title, description, board, url, pin image
* A user should be able to create boards to pin items to. Every pin belongs to one board. A board has a name and belongs to a user.
* When the user clicks on a pin from the home page, it can either pop the pin up like Pinterest does, or go to a separate show page.
* There should be a search form to search the descriptions of the pins and show those matching (across all users).
* There should be a nav providing links to the home page, the user's pins, and the user's boards
* Bonus: make it look amazing!

###Assignment 43
* [Read about memoization](http://www.justinweiss.com/blog/2014/07/28/4-simple-memoization-patterns-in-ruby-and-one-gem/)
* Review the [ActiveRecord Scopes](http://guides.rubyonrails.org/active_record_querying.html#scopes) guide
* Review using model scopes in [ActiveAdmin](http://activeadmin.info/docs/3-index-pages.html). Scroll down to the _Index Scopes_ section
* Review my [troubleshooting guide](https://github.com/TIY-TSP-Rails-Fall2014/Assignments/blob/master/TroubleshootingGuide.md)
* Read about the [Flash](http://guides.rubyonrails.org/action_controller_overview.html#the-flash)
* Add three scopes to any model and implement in ActiveAdmin too
* Scope all your user owned models (ex. pin and board), and use within your controller so your site cannot be hacked (denying other's from accessing records they don't own).
* Add flash display on site (within layout). Use a flash notice when denying access to a record the user doesn't own. Note: once in the site wide layout, you'll want to remove the notice displays your scaffolding put in place, or you'll have them repeating on those pages.
* Add an `admin` attribute to your user model. Restrict any admin only actions from your views.

###Assignment 44
* Adjust your Pinterest app to only allow "admin" users to access the /admin section

###Assignment 45
* Read about [Rake tasks in Rails](http://guides.rubyonrails.org/command_line.html#rake)
* Create a custom rake task for your Pinterest app that will output the current count of all your models. Example:

  Teams: 4
  Users: 10
  Books: 15
  Authors: 2
  Movies: 1

_be rake db:counts_

###Assignment 46
* Halfway review

###Assignment 47
* Do the [CSS layout tutorial](http://learnlayout.com/)
* Remember to ignore _.idea_ directory from your apps via .gitignore
* Become familiar with RubyMine
* Watch more [tutorials](https://www.youtube.com/playlist?action_edit=1&list=PLQ176FUIyIUZktev2DKrprwfl-OzQ-c4T)
* Review the [documentation](https://www.jetbrains.com/ruby/documentation/)

###Assignment 48
* Read about ri [Up and Running With Ruby Interactive](http://samuelmullen.com/2012/01/up-and-running-with-ruby-interactive-ri/), [5 Reasons You Should Use ri To Read Ruby Documentation](http://www.jstorimer.com/blogs/workingwithcode/7766081-5-reasons-you-should-use-ri-to-read-ruby-documentation)
* Try [Dash](http://kapeli.com/dash)
* Try [OmniRef](https://www.omniref.com/)
* Sign up to use the [Suncoast Dev Slack](http://suncoast.io)
* Install the [better_errors gem](https://github.com/charliesome/better_errors) in your Pinterest application. Create an error to see how it works.
* Read about the [Rails logger](http://guides.rubyonrails.org/debugging_rails_applications.html) and implement some lines in your controller. Output an instance variable using the `.inspect` method to the log. Paste the section of your log file in a comment in this issue. In an issue comment direct me to where you have added the logger statements. (Yes, in this case you can check logger statements in).
* Read about using the [pry console debugger](https://github.com/nixme/pry-debugger) and try it in a controller action.

###Assignment 49
* Create a checklist of things to do to create a new Rails app, version control it in git, share it in GitHub and finally, get it running on Heroku.
* Use [Markdown](https://help.github.com/articles/markdown-basics/) to create the list. Put it in your _Assignments_ git repo and push it to GitHub.

###Assignment 50
* Reread the [ActiveRecord Query Interface doc](http://guides.rubyonrails.org/active_record_querying.html)
* Create a new Rails app, and the four models mentioned in the guide (with proper migrations): Client, Address, Order, Role
* Create just one controller (call it anything), with one action
* Make that one action the root
* Within that controller, try all the query samples from the query guide, section 1.1 (skipping the batches) and sections 2, 3, 4, and 5 and put a comment above as to why each is used.
* The view can just say "See controller" (no output is expected)
* No other views or scaffolds are required.
* You many need to create some basic seed data for the four models.
* Don't go overboard and make this too complex.

* https://github.com/kjswartz/query_interface

###Assignment 51
* Review what a [counter cache](http://guides.rubyonrails.org/association_basics.html) is (just section 4.1.2.3).
* Review [The Flow](https://guides.github.com/introduction/flow/)
* Read [Git Branching](http://git-scm.com/book/ca/v1/Git-Branching), sections 3.1 - 3.5
* Watch this [90 minute video](https://vimeo.com/108798680) on using Git. The password is _ironyard_.
* Clone my [movie_ratings app](https://github.com/theironyard-tampabay/movie_ratings)
* Create a new branch for this app, so you can add new functionality to it.
* In this branch, add a MovieFavorite model to the app to keep track of a user's favorite movies. In the existing movie controller app, also add a 'favorite' and 'unfavorite' action to create or destroy an appropriate record showing the movie has been favorited by the logged in user.
* The option to favorite a movie should be next to the current option to rate a movie. Note: like the Instagram app, no form is needed. Once favorite, the link should change to unfavorite.
* Also add a new action and view under account controller to show all the user's favorite movies. Add a link to this new page onto the nav.
* When the functionality is added and committed to the new branch, push the new branch to your GitHub repo, and place a pull request.
* Copy the PR link into a comment here. Do not accept the PR so I can see it pending. I will review, and provide feedback.

###Assignment 52
- [x] Read the [Asset Pipeline Rails guide](http://guides.rubyonrails.org/asset_pipeline.html)
- [x] Read through the [SASS Basics guide](http://sass-lang.com/guide)
- [x] Use SASS in one of your past apps, and ensure you do the following:
- [x] Change your application.css to be a SASS file and to use `import` statement instead of the require tree.
- [x] Ensure your custom css is listed in your layout file below bootstrap, so they override any bootstrap files
- [x] Create and use at least one partial. Suggestion: place a few color variables in a `colors` partial
- [x] Ensure the scaffold.css from the Rails scaffold generator is no longer in use
- [x] Use the `darken` function to have one color be auto darkened off of another.
- [x] Set your site's background color via a variable
- [x] Use a few "nested" styles
- [x] Setup [bourbon](http://bourbon.io/) in your app
- [x] Look through bourbon's mixins and use at least one in your app. Find them in the [documentation](http://bourbon.io/docs/)

###Assignment 53
* Review [using cookies in Rails](http://api.rubyonrails.org/classes/ActionDispatch/Cookies.html)
* Review [Rails sessions](http://guides.rubyonrails.org/action_controller_overview.html#session)
* Review [has_secure_password](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
* Add real user authentication to your Pinterest app
* User sign up, sign in, sign out
* Adjust current_user method in application controller to use the signed in user from the session

###Assignment 54
* Download the [RubyKoans](http://rubykoans.com/)
* Create a local git repo and a GitHub repo for them
* Complete 1 - 141 of the Koans
* Check in your work and push to GitHub
* Please provide a link to your new GitHub repo for the Koans

###Assignment 55
* Read the Rails guide on [Action Mailer](http://guides.rubyonrails.org/action_mailer_basics.html)
* Add a welcome mailer to the sign up process in your Pinterest app
* Get it working on your laptop first, using the [letter_opener gem](https://github.com/ryanb/letter_opener)
https://devcenter.heroku.com/articles/sendgrid#ruby-rails
* Next, deploy to Heroku and setup with sendgrid
* Ensure emails are being received by users when signing up on Heroku

###Assignment 56
* Review the [Rails testing guide](http://guides.rubyonrails.org/testing.html)
* Using your Pinterest app and conventional built in testing (note: you can load the testing db using any preferred means).
* Write some unit tests to check that all the models will not save unless they have valid data (testing the validations).
* Write a functional test to ensure the home page comes up with the proper data on it.
* Write a functional test to ensure clicking on a pin link display the correct view.
* Write a functional test to ensure the search works correctly.
* Write an integration test to ensure there is a nav providing links to the home page, the user's pins, and the user's boards
* Write an integration test to ensure only admins can get to the admin section.
* Write an integration test to ensure users can only see their own pins and only when they are logged in.

###Assignment 57
* Read the following two articles by DHH on testing [Test Induced Design Damage](http://david.heinemeierhansson.com/2014/test-induced-design-damage.html) and [TDD is Dead, Long Live Testing](http://david.heinemeierhansson.com/2014/tdd-is-dead-long-live-testing.html)
* Review the [Rails guide on Eager Loading](http://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations)
* Modify your Pinterest app to use eager loading in at least one place. Confirm in your logs that it has reduced the number of database queries.
* Try to find a place to use it that will not result in loading more data than necessary.

###Assignment 58
* Read through this [JavaScript Basics](http://jqfundamentals.com/chapter/javascript-basics) and put some of the examples in your JS and ensure they run, show the proper output in the console and that you understand the basics.
* Note: Use `console.log` where the demo shows just `log`.
* Note: The _this_ explanation is a tricky thing in JavaScript. Don't get bogged down by it. jQuery will help with that.
* Check the two HTML pages and two JS pages we created in class (and perhaps a css if you used one).

###Assignment 59
* Add a [jQuery plugin](http://plugins.jquery.com/) to your Pinterest app
* Be sure to direct me to where on your app you've added it, both in your code and what page it's running on at Heroku so I can see it work.

###Assignment 60
* Review the Rails guide on [Working with JavaScript in Rails](http://guides.rubyonrails.org/working_with_javascript_in_rails.html)
* Refer to the [CoffeeScript docs](http://coffeescript.org/)
* Write some CoffeeScript in your Pinterest app to listen for a click on the header/logo of your app (in the nav), and when clicked, popup a bootstrap modal with some about information for your app.
* Bonus: Use Ajax in one place in your Pinterest app (deleting an item, adding an item, etc)
