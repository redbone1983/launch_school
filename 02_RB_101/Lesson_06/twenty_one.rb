require 'pry'
# FIXES

# play_again? after five_wins? returns true



#######################
# CREATE GAME CONSTANTS
#######################

HUMAN = { name: "Your", hand: [], score: 0, wins: 0, move: "stay", bust: false }
DEALER = { name: "Dealer's", hand: [], score: 0, wins: 0, move: "stay", bust: false }
SUITS = ["♥", "♠", "♦", "♣"]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', :A]

#######################
# CREATE DECK OF CARDS
#######################

def initialize_deck
  VALUES.product(SUITS).shuffle
end

########################
# OUTPUT/DISPLAY METHODS
########################

def prompt(str)
  puts "=> #{str}"
end

def display_hand(player)
  hand = "#{player[:name]} hand is "
  if player == HUMAN
    player[:hand].each do |card|
      hand << "#{card} "
    end
  elsif player == DEALER
    hand << "#{player[:hand].first} ['unknown']"
  end
  puts
  puts "#{hand}"
  puts
end

def display_score(player)
  puts
  puts "#{player[:name]} score is #{player[:score]}."
  puts
end

################
# RETURN METHODS
################

def tally_score(player)
  # Reset players score
  player[:score] = 0
  
  player[:hand].each do |card|
    value = card.first
    
    if value.class == Integer
      player[:score] += value 
    elsif value.class == String
      player[:score] += 10
    elsif value.class == Symbol
      player[:score] += 11
    end

  end

  player[:score]
end

def bust?(player)
  if player[:score] > 21
    player[:bust] = true 
  end
  player[:bust]
end

def player_win?(player, dealer)
  player[:score] <= 21 && player[:score] > dealer[:score]
end

def dealer_win?(dealer, player)
  dealer[:score] <= 21 && dealer[:score] > player[:score]
end

def play_again?
  puts
  prompt "To play again, enter 'y'"
  puts
  answer = gets.chomp
  answer == "y"
end

def five_wins?(player)
  player[:wins] == 5
end

def reset(player)
  player[:hand] = []
  player[:score] = 0
  player[:move] = "stay"
  player[:bust] = false
  player
end

def deal_cards(player, cards, num = 1)
  num.times do
    player[:hand] << cards.pop
  end
end

def detect(player, cards, action, num = 1)

  player[action] = case action
  when :score
    tally_score(player) 
  when :move
    deal_cards(player, cards, num)
  when :bust
    bust?(player)
  when :wins
    player_wins?(player)
  end
  player[action]
end

def show(player, item)
  
  output = case item
  when "score"
    display_score(player) 
  when "hand"
    display_hand(player)
  when "five"
    five_wins?(player)
  end
  output

end

def mutate(player, action)
  player[action] = case action
  when :move
    "hit"
  when :bust
    bust?(player)
  end
  player[:action]
end

#######################
# START GAME OUTER LOOP
#######################

loop do
  system "clear"
  
  deck = initialize_deck
  
  # reset
  human = reset(HUMAN)
  dealer = reset(DEALER)

  # Deal 2 card each
  human_hand = detect(human, deck, :move, 2)
  dealer_hand = detect(dealer, deck, :move, 2)
    
  # Tally score
  human_total = detect(human, deck, :score)
  dealer_total = detect(dealer, deck, :score)

  #############################
  # START INNER HUMAN MOVE LOOP
  #############################
  
  loop do
    show(human, "hand")
    puts "......................................"
    show(dealer, "hand")
    puts "......................................"
    show(human, "score")
    prompt "(h)it or (s)tay?"
    puts
    answer = gets.chomp

    system "clear"
      
    if answer.downcase.start_with?("h")
      puts
      puts "You decided to Hit..."
      puts
      detect(human, deck, :move)
      mutate(human, :move)
    elsif answer.downcase.start_with?("s")
      puts
      puts "You decided to Stay..."
      puts
      human[:move] = "stay"
    else
      puts
      puts "Invalid Entry."
      puts
      next
    end
  
    human_total
      
    break if human[:move] == "stay" || bust?(human)
  end

  ##############################
  # START INNER DEALER MOVE LOOP
  ##############################
  tally_score(dealer)
  
  loop do
      
    if dealer[:score] < 17
      puts
      puts "Dealer hits..."
      puts
      dealer[:hand] << deck.pop
    elsif dealer[:score] >= 17
      puts
      puts "Dealer stays..."
      puts
      dealer[:move] = "stay"
    end

   tally_score(dealer)

    break if dealer[:move] == "stay" || bust?(dealer)
  end

  ###########################
  # CHECK FOR WINNER OR LOSER
  ###########################
  
  if bust?(human) || dealer_win?(dealer, human)
    puts "**************"
    puts  "Dealer wins!"
    puts "**************"
    dealer[:wins] += 1
  elsif bust?(dealer) || player_win?(human, dealer)
    puts "************"
    puts   "You Win!"
    puts "************"
    human[:wins] += 1
  else
    puts "****************"
    puts  "You have tied."
    puts "****************"
  end

  #####################
  # DISPLAY FINAL SCORE
  #####################
  puts
  puts "Final score: "
  puts "You: #{human[:score]} & Dealer: #{dealer[:score]}."
  puts

  ###################
  # DISPLAY GAME WINS
  ###################
  
  puts "......................................"
  puts
  puts "Dealer wins: #{dealer[:wins]}."
  puts
  puts "Your wins: #{human[:wins]}."
  puts
  puts "......................................"

  ###################
  # DISPLAY BEST OF 5
  ###################
  
  if five_wins?(dealer)
    puts "Dealer wins best out of 5!"
  elsif five_wins?(human)
    puts "Human wins best out of 5!"
  end

  #############
  # FINISH GAME
  #############
  
  break unless play_again?
  
  # Break if HUMAN or DEALER gets 5 wins
  break if five_wins?(human) || five_wins?(dealer)
end

puts
puts "Thanks for playing 21! Goodbye!"
