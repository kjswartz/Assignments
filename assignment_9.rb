#Write a Ruby script to do the following:

#1 Take the string "Hello World" and split it on whitespace. Show two ways to do this.
hw_string = "Hello World"
print hw_string.split(/\s/).inspect
puts
print hw_string.split(' ')
puts

#2 Use the Peter Piper tongue twister and split it on 'pick'
peter_piper = "Peter Piper picked a peck of pickled peppers. A peck of pickled peppers Peter Piper picked. If Peter Piper picked a peck of pickled peppers, Where's the peck of pickled peppers Peter Piper picked?"
puts peter_piper.split(/pick/).inspect

#3 Use gsub only to change the first passage to the second in the fewest amount of commands:
gsub_string = "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."
puts gsub_string.gsub!(/(you|You)(?!\S)/, "I").gsub(/your/, "my").gsub(/yourself/, "myself").gsub(/you're/i, "I'm").gsub(/YOU are/, "I'M")

#4 count sh
sh_string = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"
puts sh_string.scan(/sh/).length

#5 sh with an o after
puts sh_string.scan(/sh(?=o)/).length

#6 football
foot_string = "He played football despite having an artificial foot."
foot_match = /foot(?!ball)/.match(foot_string)
puts foot_match
puts foot_match.pre_match

#7 sits phrase
sits_string = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
match_sits = /(sits)/.match(sits_string)
puts match_sits.length
puts match_sits[1]


=begin misc replace sites. with new word
  pattern = /sits/
  replace_last_sits = "changed"

  sits_matches = sits_string.scan(pattern).length

  sitscount = 0
  sits_string.gsub!(pattern) do |match|
    sitscount += 1
    sitscount == sits_matches ? replace_last_sits : match
  end
  puts sits_string
=end

#even another way to replace last but deletes period
    #sits_matches = sits_string.gsub!(/sits.$/, "test")
