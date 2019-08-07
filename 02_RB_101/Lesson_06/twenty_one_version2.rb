require 'pry'
#######################
# CREATE GAME CONSTANTS
#######################
SUITS = ["♥", "♠", "♦", "♣"]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', :A]
WIN_NUM = 21
NUM_BREAK = 17

#######################
# CREATE PLAYER OBJECTS
#######################
HUMAN = {
  name: "Your",
  hand: [],
  score: 0,
  wins: 0,
  move: "stay",
  bust: false
}

DEALER = {
  name: "Dealer's",
  hand: [],
  score: 0,
  wins: 0,
  move: "stay",
  bust: false
}

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
  puts
  puts "=> #{str}"
  puts
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
  prompt hand.to_s
end

def display_score(player)
  prompt "#{player[:name]} score is #{player[:score]}."
end

def display_wins(player, dealer)
  prompt "Your wins: #{player[:wins]}. Dealer wins: #{dealer[:wins]}."
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
      player[:score] -= 10 if player[:score] > WIN_NUM
    end

  end
  
  player[:score]
end

def bust?(player)
  if player[:score] > WIN_NUM
    player[:bust] = true
  end
  player[:bust]
end

def win?(player, opponent = DEALER)
  player[:score] <= WIN_NUM && player[:score] > opponent[:score]
end

def play_again?
  prompt "To play again, enter 'y'"
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

def reset_wins(player)
  player[:wins] = 0
  player
end

def deal_cards(player, cards, num = 1)
  num.times do
    player[:hand] << cards.pop
  end
end

def detect(player, cards, action, num = 1)
  case action
  when :score
    tally_score(player)
  when :move
    deal_cards(player, cards, num)
  when :bust
    bust?(player)
  when :wins
    win?(player)
  end
end

def show(player, item)
  case item
  when "score"
    display_score(player)
  when "hand"
    display_hand(player)
  when "five"
    five_wins?(player)
  end
end

def mutate(player, action, num)
  player[action] =
    case action
    when :move
      ["hit", "stay"][num]
    when :bust
      bust?(player)
    end
  player
end

#######################
# START OUTER GAME LOOP
#######################

loop do
  system "clear"

  deck = initialize_deck

  # reset
  human = reset(HUMAN)
  dealer = reset(DEALER)

  # reset wins?
  if five_wins?(human) || five_wins?(dealer)
    human = reset_wins(human)
    dealer = reset_wins(dealer)
  end

  # Deal 2 card each
  detect(human, deck, :move, 2)
  detect(dealer, deck, :move, 2)

  # Tally score
  human_total = detect(human, deck, :score)
  dealer_total = detect(dealer, deck, :score)

  #############################
  # START INNER HUMAN MOVE LOOP
  #############################

  loop do
    show(human, "hand")
    show(dealer, "hand")
    show(human, "score")

    prompt "Press Enter to HIT or 1 to STAY"
    answer = gets.to_i

    system "clear"

    if answer == 0
      prompt "You decided to hit..."
      puts "************"
      detect(human, deck, :move)
      mutate(human, :move, answer)
      human_total = detect(human, deck, :score)
    elsif answer == 1
      prompt "You decided to stay..."
      puts "************"
      mutate(human, :move, answer)
    else
      prompt "Invalid Entry."
      puts "************"
      next
    end

    break if human[:move] == "stay" || bust?(human) 
  end

  ##############################
  # START INNER DEALER MOVE LOOP
  ##############################

  loop do
    
    if dealer_total < NUM_BREAK
      prompt "Dealer hits..."

      detect(dealer, deck, :move)
      dealer_total = detect(dealer, deck, :score)
    elsif dealer_total >= NUM_BREAK
      prompt "Dealer stays..."
      mutate(dealer, :move, 1)
    end
    binding.pry
    break if dealer[:move] == "stay" || bust?(dealer)
  end

  ###########################
  # CHECK FOR WINNER OR LOSER
  ###########################

  if bust?(human) && bust?(dealer)
    puts "************"
    prompt "You both busted!"
    puts "************"
  elsif bust?(dealer) || win?(human, dealer)
    puts "************"
    prompt "You Win!"
    puts "************"
    human[:wins] += 1
  elsif bust?(human) || win?(dealer, human)
    puts "**************"
    prompt "Dealer wins!"
    puts "**************"
    dealer[:wins] += 1
  else
    puts "****************"
    prompt "You have tied."
    puts "****************"
  end

  #####################
  # DISPLAY FINAL SCORE
  #####################

  prompt "Final score: "
  prompt "You: #{human_total} & Dealer: #{dealer_total}."
  puts "************"

  ###################
  # DISPLAY GAME WINS
  ###################

  display_wins(human, dealer)

  ###################
  # DISPLAY BEST OF 5
  ###################

  if show(dealer, "five")
    prompt "Dealer wins best out of 5!"
  elsif show(human, "five")
    prompt "Human wins best out of 5!"
  end

  #############
  # FINISH GAME
  #############

  break unless play_again?
end

puts "Thanks for playing #{WIN_NUM}! Goodbye!"
