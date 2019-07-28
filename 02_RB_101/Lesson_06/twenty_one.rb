# Data Structures for the following:

# 52 Card Deck

#        Hearts  || Spades || Diamonds || Clubs || Total Cards
#       =======================================================
# Ace:   [ 1, 11]   [ 1, 11]  [ 1, 11]  [ 1, 11]    4
# Queen: 10         10        10        10          4
# Jack:  10         10        10        10          4
# King:  10         10        10        10          4
# Face:  (2..10)    (2..10)   (2..10)   (2..10)     36
DEALER = { :hand => "", :score => 0 }
HUMAN = { :hand => "", :score => 0 }
WIN = 21

SUITS = [ "hearts", "spades", "diamonds", "clubs" ]

DECK = {
  :Ace => [1, 11],
  :Court => ["queen", "king", "jack"],
  :Ranks => [2, 3, 4, 5, 6, 7, 8, 9, 10]
}

def winner_check(p, d)
  if p[:score] <= 21 && p[:score] > d[:score]
    puts "Player wins! Final Score: P = #{p[:score]}, D = #{d[:score]}."
  elsif d[:score] <= 21 && d[:score] > p[:score]
    puts "Dealer wins! Final Score: D = #{d[:score]}, P = #{p[:score]}."
  end
end

# MOVE METHOD
def hit_or_stay(move, deck, player)
  if move == "hit"
    deal_cards(deck, player)
  elsif move == "stay"
    winner_check(player, DEALER)
  else
    puts "Invalid entry. Please enter 'hit' or 'stay'."
  end
end


# DEAL METHOD
def deal_cards(deck, player)
  card = deck.keys.sample
  case card
  when :Court
    player[:hand] = "#{deck[:Court].sample} of #{SUITS.sample}"
    player[:score] += 10
  when :Ranks
    rank_num = deck[:Ranks].sample
    player[:hand] = "#{rank_num} of #{SUITS.sample}"
    player[:score] += rank_num
  when :Ace
    player[:hand] = "Ace of #{SUITS.sample}"
    if player[:score] < 10
      player[:score] += 11
    else
      player[:score] += 1
    end
  end
  player
end

def busted(deck, player)

end

dealer = deal_cards(DECK, DEALER)

# GAME LOOP
loop do
  human = deal_cards(DECK, HUMAN)
  puts "HUMAN: #{human}. DEALER: #{dealer}."
  puts "Hit or Stay?"
  human_move = gets.chomp
  hit_or_stay(human_move, DECK, HUMAN)
  winner_check(HUMAN, DEALER)
  
  break if human_move == "stay" || busted(deck, player) #=> Should return true or false
end


