#!/usr/bin/ruby
class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)
    # creates array to house individual pigatized words
    piglatin = []
    # splits the user text into an array of individual words to itterate over
    passed_text.split.each do |word|
    # Check to see if the first letter of a word is a vowel, if not it's a consonant
      if PigLatin.starts_with_vowel(word[0])
        # pushes the pigatized word into piglatin array
        piglatin << word + "way"
      else
        # Takes first letter, moves it to the end, and adds "ay"
        # and pushes word into piglation array
        piglatin << word.slice(1..-1) + word.slice(0) + "ah"
      end
    end
    # calls up the array holding all the pigatized words and joins them with a space
    return piglatin.join(' ')
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    VOWELS.include?(first_letter)
  end
end

puts "Please enter a word and I will translate to pig latin"
text = gets.chomp
puts "Pigatized: #{PigLatin.pigatize(text)}"
