require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

card_5 = Card.new("What type of meat is chashu?", "pork", :Food)
card_6 = Card.new("Are heirloom tomatoes determinate or indeterminate?", "indeterminate", :Garden)
card_7 = Card.new("What type of plant uses bacterial nodes to fix nitrogen in the soil?", "legume", :Garden)
card_8 = Card.new("What type of bones are used to make ramen broth?", "neck bones", :Food)
card_9 = Card.new("What is the name for the cooking method that involves cooking at a consistent temperture in a water bath", "sous vide", :Food)

@deck = Deck.new([card_5, card_6, card_7, card_8, card_9])
@round = Round.new(@deck)

def start
  puts "Welcome! You're playing with 5 cards."
  puts "-----------------------------------"
  puts "-----"
  #should i get the card number in a different way

  #@deck.cards.map do |card|
  5.times do
    puts "This is card number 1 out of #{@deck.count + @round.turns.count}"
    puts "Question: #{@round.current_card.question}"
    answer = gets.chomp
    @round.take_turn(answer)
    puts @deck.cards.count
    puts @round.turns.last.feedback
    #binding.pry
  end
end

start

    #should i get the card number in a different way
#   puts "This is card number 2 out of #{@deck.count + @round.turns.count}"
#   puts "Question: #{@round.current_card.question}"
#
# end