require 'rubocop'

# Initialize Game Constants
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = [ "choose", "player", "computer" ]
WINS = 5

def prompt(str)
  puts "=> #{str}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "========================================="
  puts "WELCOME TO THE GAME OF TIC TAC TOE!"
  puts ""
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "Best out of 5 games wins. GOOD LUCK!"
  puts "========================================="
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

# Create hash data structure to store board's state
def initialize_board
  # Initialize empty hash object
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# Inspect board state
def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# Destructively Modify Board
def player_places_piece!(brd)
  # Initialize empty string object
  square = ''

  # Start Player's Turn Loop
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"

    # Assign Integer Object to square
    square = gets.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  # Assign 'X' as value to player's chosen square
  brd[square] = PLAYER_MARKER
end

def ai_assist!(win_moves, brd, marker)
  if brd.values_at(*win_moves).count(marker) == 2
    brd.select{|k,v| win_moves.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense
  WINNING_LINES.each do |line|
    square = ai_assist!(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  WINNING_LINES.each do |line|
    square = ai_assist!(line, brd, PLAYER_MARKER)
    break if square
  end

  # just picks a random square
  if empty_squares(brd).include?(5)
    square = 5
  else
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def players_choice!(brd)
  prompt "Please choose who goes first: "
  prompt "Enter 'P' for Player or 'C' for Computer"
  choice = gets.chomp
  choice = choice.upcase!
  if choice == "P"
    player_places_piece!(brd)
  elsif choice == "C"
    computer_places_piece!(brd)
  end
end

def place_piece!(brd, name)
  if name == "choose"
    players_choice!(brd)
  elsif name == "player"
    player_places_piece!(brd)
  elsif name == "computer"
    computer_places_piece!(brd)
  end
end

# Check if board is full
def board_full?(brd)
  empty_squares(brd).empty?
end

# Check if someone won
def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      return "Player"
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      return "Computer"
    end
  end

  nil
end

def alternate_player(curr_player)
  if curr_player == "player"
    return "computer"
  elsif curr_player == "computer"
    return "player"
  end
end

def display_score(brd, score_brd)
  puts "SCORE: Player = #{score_brd[:player]}. Computer = #{score_brd[:computer]}."
  puts "========================================"
end

current_player = FIRST_MOVE.sample
# Best out of 5 score loop
loop do
  # Keep track of score
  
  score = { player: 0, computer: 0 }
  # Main Game Loop
  loop do
    board = initialize_board
    loop do
      display_board(board)
      display_score(board, score) 
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie."
    end

    display_board(board)
    
    if detect_winner(board) == "Player"
      score[:player] += 1
    elsif detect_winner(board) == "Computer"
      score[:computer] += 1
    end


  if score[:player] == WINS
    prompt "Player is 5 time champion!"
  elsif score[:computer] == WINS
    prompt "Computer is 5 time champion!"
  end

  break if score[:player] == WINS || score[:computer] == WINS
  end

  prompt "Play Again?: (Enter y or n)"
  answer = gets.chomp

break unless answer.downcase.start_with?('y')
end

"Thanks for playing TIC TAC TOE!"
