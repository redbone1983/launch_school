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

def player_bust?(player)
  if player[:score] > 21
    player[:bust] = true 
  end
  player[:bust]
end

def dealer_bust?(dealer)
  if dealer[:score] > 21
    dealer[:bust] = true 
  end
  dealer[:bust]
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

#######################
# START GAME OUTER LOOP
#######################

loop do
  system "clear"
  
  deck = initialize_deck
  
  # reset player's hand
  HUMAN[:hand] = []
  DEALER[:hand] = []

  # Deal 2 card each
  2.times do
    HUMAN[:hand] << deck.pop
    DEALER[:hand] << deck.pop
  end
    
  # Tally score
  tally_score(HUMAN)
  tally_score(DEALER)

  #############################
  # START INNER HUMAN MOVE LOOP
  #############################
  
  loop do
    display_hand(HUMAN)
    puts "......................................"
    display_hand(DEALER)
    puts "......................................"
    display_score(HUMAN)
    prompt "(h)it or (s)tay?"
    puts
    answer = gets.chomp

    system "clear"
      
    if answer.downcase.start_with?("h")
      puts
      puts "You decided to Hit..."
      puts
      HUMAN[:hand] << deck.pop
      HUMAN[:move] = "hit"
    elsif answer.downcase.start_with?("s")
      puts
      puts "You decided to Stay..."
      puts
      HUMAN[:move] = "stay"
    else
      puts
      puts "Invalid Entry."
      puts
      next
    end
  
    tally_score(HUMAN)
      
    break if HUMAN[:move] == "stay" || player_bust?(HUMAN)
  end

  ##############################
  # START INNER DEALER MOVE LOOP
  ##############################
  
  loop do
      
    if DEALER[:score] < 17
      puts
      puts "Dealer hits..."
      puts
      DEALER[:hand] << deck.pop
    elsif DEALER[:score] >= 17
      puts
      puts "Dealer stays..."
      puts
      DEALER[:move] = "stay"
    end

    tally_score(DEALER)

    break if DEALER[:move] == "stay" || dealer_bust?(DEALER)
  end

  ###########################
  # CHECK FOR WINNER OR LOSER
  ###########################
  
  if player_bust?(HUMAN)
    puts
    puts "You busted! Dealer wins!"
    puts
    DEALER[:wins] += 1
  elsif player_win?(HUMAN, DEALER)
    puts
    puts "You win!"
    puts
    HUMAN[:wins] += 1
  elsif dealer_bust?(DEALER)
    puts 
    puts "Dealer busted. You Win!"
    puts
    HUMAN[:wins] += 1
  elsif dealer_win?(DEALER, HUMAN)
    puts
    puts "Dealer wins!"
    puts
    DEALER[:wins] += 1
  else
    puts
    puts "You have tied."
    puts
  end

  #####################
  # DISPLAY FINAL SCORE
  #####################
  
  puts
  puts "Final score: "
  puts "You: #{HUMAN[:score]} & Dealer: #{DEALER[:score]}."
  puts

  ###################
  # DISPLAY GAME WINS
  ###################
  
  puts "......................................"
  puts
  puts "Dealer wins: #{DEALER[:wins]}."
  puts
  puts "Your wins: #{HUMAN[:wins]}."
  puts
  puts "......................................"

  ###################
  # DISPLAY BEST OF 5
  ###################
  
  if five_wins?(DEALER)
    puts "Dealer wins best out of 5!"
  elsif five_wins?(HUMAN)
    puts "Human wins best out of 5!"
  end

  #############
  # FINISH GAME
  #############
  
  break unless play_again?
  
  # Break if HUMAN or DEALER gets 5 wins
  break if five_wins?(HUMAN) || five_wins?(DEALER)
end

puts
puts "Thanks for playing 21! Goodbye!"
