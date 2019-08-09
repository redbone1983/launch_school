SUITS = ["♥", "♠", "♦", "♣"]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', :A]
WIN_NUM = 21
NUM_BREAK = 17

HUMAN = {
  name: nil,
  hand: [],
  score: 0,
  wins: 0,
  move: "stay",
  bust: false
}

DEALER = {
  name: nil,
  hand: [],
  score: 0,
  wins: 0,
  move: "stay",
  bust: false
}

def initialize_deck
  VALUES.product(SUITS).shuffle
end

def prompt(str)
  puts
  puts "=> #{str}"
  puts
end

def detect_hand(player)
  hand = "#{player[:name]}'s hand is "

  if player == HUMAN
    player[:hand].each do |card|
      hand << "#{card} "
    end
  end

  if player == DEALER
    hand << "#{player[:hand].first} ['unknown']"
  end

  hand.to_s
end

def display_hand(player)
  prompt detect_hand(player)
end

def display_score(player)
  prompt "#{player[:name]}'s score is #{player[:score]}."
end

def display_game_wins(player, dealer)
  prompt "#{player[:name]}'s wins: #{player[:wins]}."
  prompt "#{dealer[:name]}'s wins: #{dealer[:wins]}."
end

def score_total(player)
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
end

def player_win?(player, dealer)
  player[:score] <= WIN_NUM && player[:score] > dealer[:score]
end

def dealer_win?(dealer, player)
  dealer[:score] <= WIN_NUM && dealer[:score] > player[:score]
end

def play_again?
  prompt "To play again, enter 'y'"
  answer = gets.chomp
  answer.downcase == 'y'
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
  player[:hand]
end

def player_move(player, move)
  if move == 'h'
    player[:move] = "hit"
  elsif move == 's'
    player[:move] = "stay"
  end
  player[:move]
end

def get_name(player, dealer)
  prompt "Please enter your name: "
  name = gets.chomp
  player[:name] = name

  system "clear"

  prompt "Hi, #{name}. Now, enter your dealer's name: "
  dealer_name = gets.chomp
  dealer[:name] = dealer_name

  system "clear"

  prompt "Welcome to #{WIN_NUM}, #{name}!"
end

def hit_or_stay?(player, answer, cards)
  if answer.downcase == "h"
    prompt "#{player[:name]} decided to hit..."
    player_move(player, answer)
    deal_cards(player, cards, 1)
    score_total(player)
  elsif answer.downcase == "s"
    prompt "#{player[:name]} decided to stay..."
    player_move(player, answer)
  else
    prompt "Invalid entry."
    human_moves(player, DEALER, cards)
  end
end

def human_moves(player, dealer, cards)
  display_hand(player)
  display_hand(dealer)
  display_score(player)

  prompt "Enter (s)tay or (h)it"
  answer = gets.chomp

  system "clear"

  hit_or_stay?(player, answer, cards)
end

def detect_winner(player, dealer)
  if bust?(player)
    :player_busted
  elsif bust?(dealer)
    :dealer_busted
  elsif player_win?(player, dealer)
    :player_wins
  elsif dealer_win?(dealer, player)
    :dealer_wins
  else
    :tie
  end
end

def display_winner(player, dealer)
  case detect_winner(player, dealer)
  when :player_busted
    prompt "#{player[:name]} busted! #{dealer[:name]} wins!"
  when :dealer_busted
    prompt "#{dealer[:name]} busted! #{player[:name]} wins!"
  when :player_wins
    prompt "#{player[:name]} wins!"
  when :dealer_wins
    prompt "#{dealer[:name]} wins!"
  when :tie
    prompt "You have tied."
  end
end

def total_wins(player, dealer)
  case detect_winner(player, dealer)
  when :player_busted
    dealer[:wins] += 1
  when :dealer_wins
    dealer[:wins] += 1
  when :dealer_busted
    player[:wins] += 1
  when :player_wins
    player[:wins] += 1
  end
end

get_name(HUMAN, DEALER)

# START OUTER GAME LOOP
loop do
  system "clear"

  deck = initialize_deck

  human = reset(HUMAN)
  dealer = reset(DEALER)

  if five_wins?(human) || five_wins?(dealer)
    human = reset_wins(human)
    dealer = reset_wins(dealer)
  end

  deal_cards(human, deck, 2)
  deal_cards(dealer, deck, 2)

  human_total = score_total(human)
  dealer_total = score_total(dealer)

  # HUMAN MOVES
  loop do
    human_moves(human, dealer, deck)
    human_total = score_total(human)
    break if human[:move] == "stay" || bust?(human)
  end

  # DEALER MOVES
  loop do
    if dealer_total < NUM_BREAK
      prompt "#{dealer[:name]} hits..."
      player_move(dealer, 'h')
      deal_cards(dealer, deck, 1)
      detect_hand(dealer)
      dealer_total = score_total(dealer)
    elsif dealer_total >= NUM_BREAK
      prompt "#{dealer[:name]} stays..."
      player_move(dealer, 's')
    end

    break if dealer[:move] == "stay" || bust?(dealer)
  end

  detect_winner(human, dealer)
  display_winner(human, dealer)
  total_wins(human, dealer)

  prompt "Final score: "
  prompt "You: #{human_total} & Dealer: #{dealer_total}."

  display_game_wins(human, dealer)

  if five_wins?(dealer)
    prompt "Dealer wins best out of 5!"
  elsif five_wins?(human)
    prompt "Human wins best out of 5!"
  end

  break unless play_again?
end

puts "Thanks for playing #{WIN_NUM}! Goodbye!"
