DEALER = { :name => "Gentleman Jack", :hand => [], :score => 0 }
HUMAN = { :name => "Maya", :hand => [], :score => 0 }
SUITS = [ "♥", "♠", "♦", "♣"]
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(str)
  puts "=> #{str}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map {|card| card[1] }
  
  score = 0
  values.each do |value|
    
    case value
    when value.to_i == 0 # J, Q, K
      score += 10
    when "A"
      score += 11
    else
      score += value.to_i
    end
  end

  # Fix for Aces
  values.select { |value| value == "A" }.count.times do
    score -= 10 if score > 21
  end

  score
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_hand, player_hand)
  player_total = total(player_hand)
  dealer_total = total(dealer_hand)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_hand, player_hand)
  result =  detect_result(dealer_hand, player_hand)
  
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# GAME LOOP
loop do
  prompt "Welcome to 21!"
  deck = initialize_deck
  player_hand = HUMAN[:hand]
  dealer_hand = DEALER[:hand]
  
  # DEAL 2_hand EACH
  2.times do
    player_hand << deck.pop
    dealer_hand << deck.pop
  end

  prompt "Dealer has #{dealer_hand[0]} and ?"
  prompt "You have: #{player_hand[0]} and #{player_hand[1]}, for a total of #{total(player_hand)}."
  
 # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_hand << deck.pop
      prompt "You chose to hit!"
      prompt "Your hand is now: #{player_hand}"
      prompt "Your total is now: #{total(player_hand)}"
    end

    break if player_turn == 's' || busted?(player_hand)
  end

  if busted?(player_hand)
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_hand)}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if total(dealer_hand) >= 17

    prompt "Dealer hits!"
    dealer_hand << deck.pop
    prompt "Dealer's_hand are now: #{dealer_hand}"
  end

  if busted?(dealer_hand)
    prompt "Dealer total is now: #{total(dealer_hand)}"
    display_result(dealer_hand, player_hand)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_hand)}"
  end

  # both player and dealer stays - compare_hand!
  puts "=============="
  prompt "Dealer has #{dealer_hand}, for a total of: #{total(dealer_hand)}"
  prompt "Player has #{player_hand}, for a total of: #{total(player_hand)}"
  puts "=============="

  display_result(dealer_hand, player_hand)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"


