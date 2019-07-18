# Initialize Game Constants
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(str)
  puts "=> #{str}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
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
  # Iterate through an Array object of Integer keys
  # Select all Integers whose values are an empty string
  # Return Selected Integers in a new Array object
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

# Destructively Modify Board
def computer_places_piece!(brd)
  # Assign Integer Object to square
  square = empty_squares(brd).sample

  # Assign 'O' as value to computer's chosen square
  brd[square] = COMPUTER_MARKER
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
    if brd.values_at(line[0], line[1], line[2]).all?(PLAYER_MARKER)
      return "You"
    elsif brd.values_at(line[0], line[1], line[2]).all?(COMPUTER_MARKER)
      return "Computer"
    end
  end

  nil
end

# Main Game Loop
loop do
  # Keep track of game state
  board = initialize_board
  loop do
    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play Again?: (Enter y or n)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

"Thanks for playing TIC TAC TOE!"
