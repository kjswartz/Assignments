#!/usr/bin/ruby
DECK = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

class Dealer
  attr_accessor :cards
  def initialize
    @cards = []
  end

  def draw
    @cards << DECK[rand(0..12)]
  end

  def hand
    puts "#{@cards[0]} | #{@cards[1]}"
  end

  def total
    @cards.map! do |card|
      if card == "K" || card == "Q" || card == "J"
        card = 10
      elsif card == "A"
        card = 11
      else
        card = card
      end
    end
    puts "Dealer: #{@cards.reduce :+}"
  end

end

class Player
  attr_accessor :cards
  def initialize
    @cards = []
  end

  def draw
    @cards << DECK[rand(0..12)]
  end

  def hand
    puts "#{@cards[0]} | #{@cards[1]}"
  end

  def total
    @cards.map! do |card|
      if card == "K" || card == "Q" || card == "J"
        card = 10
      elsif card == "A"
        card = 11
      else
        card = card
      end
    end
    puts "Player: #{@cards.reduce :+}"
  end

end
d = Dealer.new
p = Player.new

d.draw
p.draw
d.draw
p.draw

puts "Dealer showing: #{d.cards[0]}"
p.total
