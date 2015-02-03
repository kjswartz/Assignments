#!/usr/bin/ruby
# sets def pigatize and starts_with_vowel to String class
# when loaded user inputs string .pigatize to execute
class String
  VOWELS =  %w(a e i o u)

  def pigatize
    # creates array to house individual pigatized words
    piglatin = []
    # splits the user text into an array of individual words to itterate over
    self.downcase.split.each do |word|
    # Check to see if the first letter of a word is a vowel, if not it's a consonant
      if self.starts_with_vowel(word[0])
        # pushes the pigatized word into piglatin array
        piglatin << word + "way"
      else
        # Takes first letter, moves it to the end, and adds "ay"
        # and pushes word into piglation array
        piglatin << word.slice(1..-1) + word.slice(0) + "ay"
      end
    end
    # calls up the array holding all the pigatized words and joins them with a space
    return piglatin.join(' ')
  end

  # Check to see if the first letter is a vowel
  def starts_with_vowel(first_letter)
    VOWELS.include?(first_letter)
  end

end
