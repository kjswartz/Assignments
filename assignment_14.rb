#!/usr/bin/ruby
class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)
    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(passed_text[0])
      pigatized_text = passed_text + "way"
    else
      # Takes first letter, moves it to the end, and adds "ay"
      pigatized_text = passed_text.slice(1..-1) + passed_text.slice(0) + "ah"
    end

    return pigatized_text
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    VOWELS.include?(first_letter)
  end
end

puts "Please enter a word and I will translate to pig latin"
text = gets.chomp
puts "Pigatized: #{PigLatin.pigatize(text)}"
