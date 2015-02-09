# Assignments
Iron Yard Assignments


Assignment 4 <br>
Use the following code to create a Ruby file and run it. The file can be run either by ruby filename or, if you choose, you can set the executable bit (chmod +x filename) and add a shebang.
puts 3 > 4 puts (3 * 2) > 10 puts 2 == 3 puts (1 > 0) && (2 <= 1) puts 2 != 2 puts (14 <= 10) || (2 >= 3) puts 10 % 2 == 1 puts (10 ** 2) == 1000 puts 1000 / 300 > 4
Now change the code above so that when you run it, all the equations are true.
Please create a gist of the final code and paste the url of the gist in an issue comment.

Assignment 6<br>
Create code for each comment in this gist
Run the code and paste the output into your issue as a comment for this assignment
It should list all the proper class names and all class tests should result in 'true'
Before you run it, can you guess what will happen with the constant code you've created?


Assignment 7<br>
Create a Ruby script to ask the user for their name and then wish them a Happy Birthday by name
Add some comments to your code
Put this code in a gist and paste the link from the gist in a comment of this issue

Assignment 8<br>
Read<br>
Review<br>
Play<br>
Write a Ruby script to do the following:<br>

Take the string "Hello World" and split it on whitespace. Show two ways to do this.

Use the Peter Piper tongue twister and split it on 'pick'
Use gsub only to change the first passage to the second in the fewest amount of commands:
Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

Write code to determine how many times 'sh' occurs in the following phrase:
There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!

In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
Match the word foot but not football in this phrase: "He played football despite having an artificial foot.""
Match the last sits in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

Assignment 9<br>
Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
Be sure if the user enters whitespace on either side of the input, that you remove it first
For the original text input by the user, count how many words (as separated by spaces) and print this count.

Assignment 10<br>
Request input of a number from the user.
Iterate the number of times indicated by the input number
Within the loop, print the number of the iteration
Do this for each of these methods of looping: while, for i in range, loop, until, .times with counter, range with each
All should print from 1 to the number input by the user


Assignment 12<br>
Create an array of questions (Strings)
Iterate over the array using each, asking each question to the user
Bonus: Save all the answers with the questions, and print a summary at the end

Assignment 13<br>
Create a guessing game
The user must guess the number chosen by the app
Provide feedback to the user as to if their guess is lower or higher than the number
Count the number of guesses and output at the end

Assignment 14<br>
Using the structure of a class as I've laid out in this gist, finishing creating the PigLatin class to translate a word into pig latin
Bonus: modify the app to convert an entire phrase (one word at a time)
Note the pig latin rules in the comment of the skeleton app

Assignment 15<br>
Copy and then modify assignment 12 to read the questions from a file instead of the hard coded array
Load them into an array so the rest of the program can remain the same
If your assignment 12 is coded correctly, you won't have to change the part that asks questions
Can be done with two lines of code
Remember to have the text file of questions in the same directory where your Ruby code is

Assignment 16<br>
Pick a screenplay from this list, http://www.simplyscripts.com/ (in text)
Read in the screenplay and write it to a local file

Assignment 17<br>
Read about HTTP
Read review on using JSON in Ruby
Look thru some JSON Examples
Copy assignment 15 and modify to now read in questions from a JSON file
This means you need to create a JSON file of you questions
Read and parse the JSON into an array so the rest of the app remains the same

Assignment 19<br>
Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.
Should use the same code you wrote before, but now you are extending the String class and putting the functionality in there.

Assignment 18<br>
http://developer.rottentomatoes.com/
Use Rotten Tomato's movie querying script to create a command line app which prompts the user for a movie title
Using the entered movie title, search via the API for the movie's synopsis and output to the user
If more than one movie comes back, show all the movie title matches with their synopsis

Assignment 20<br>
Note: Please check in your Gemfile and Gemfile.lock
write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
the script should do the following when run:
1) Show the date of the beginning of the current week
2) Show what the date will be in 30 days
3) Show what day of the week today's date will fall on next year
4) Show what day of the week the user's birthday will be on this year
5) Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
6) Using the String class, truncate a phrase the user enters to 20 letters
7) Using the Array class, convert an array of three words to a sentence with one command

Assignment 21<br>
Write a Person class and some code to use it, following the directions below.
First
Create a Person class with attributes: first name, last name, and birthdate.
First name and last name should not be able to be written to, but should be readable.
Birthdate can be set and read.
Create a public instance method called name that takes the name and sets the first name and last name instance variables. This is so the first name and last name attributes are set by passing in one name.
Create a public instance method called age to calculate and return the user's age.
Now, outside the Person class, ask the user their information and use it to create the Person object.
After asking each user their information, output the user's age.
Next
Create a class variable that will count the number of people that enter in their information. After you output the person's age, also output the number of person they are so far (using the class variable).
Loop to allow another user to enter their information. (exit when user enters \q for name). Create a Person object for each user.
Create a private method called calculateAge. This should contain the functionality you previously had in the age method. The public age method should now call this new private calculateAge method.

Assignment 22<br>
Read How Do Gems Work?
Read Understanding Ruby Blocks, Procs and Lambdas

Assignment 23<br>
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

Assignment 24<br>
Take the Employee and Company classes, and create functionality to allow the company to hire and fire an employee.
Create a Ruby app that will use those classes to do the following:
prompt the user to enter information for the company.
prompt the user to enter each employee. It will then "hire" each of them.
show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id.
fire the employee by id and show an updated list with that employee no longer in it.