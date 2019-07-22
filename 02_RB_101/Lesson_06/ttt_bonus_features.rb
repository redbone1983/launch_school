# Initialize Game Constants
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

# Computer AI: Defense

# The computer currently picks a square at random. That's not very interesting. Let's make the computer defensive minded, so that if there's an immediate threat, then it will defend the 3rd square. We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row. If there's no immediate threat, then it will just pick a random square.

AI_DEFENSE = [[1, 2], [2, 3], [4, 5], [5, 6], [7, 8], [8, 9]] + # rows
             [[1, 4], [4, 7], [2, 5], [5, 8], [3, 6], [6, 9]] + # columns
             [[1, 5], [5, 9], [3, 5], [5, 7]]                   # diagonals



def prompt(str)
  puts "=> #{str}"
end

def joinor(arr, j1 = ', ', j2 = 'or')
  str = ""
  arr.each do |item|
    str << case item
    when arr[-1]
      "#{j2} #{item}"
    when arr[0] && arr.length == 2
      "#{item} "
    else
      "#{item}#{j1}"
    end
  end
  str
end

def display_board_key(brd)
  system('clear') || system('cls')
  puts "BOARD KEY:"
  puts
  puts "     |     |"
  puts "  1  |  2  |  3  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |      '
  puts "  4  |  5  |  6  "
  puts '     |     |      '
  puts '-----+-----+-----'
  puts '     |     |      '
  puts "  7  |  8  |  9  "
  puts '     |     |     '
  puts ''
  puts "========================================"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  display_board_key
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

# Creates new board
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.to_i

    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def ai_defense(brd)
  

end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd, p_hsh, c_hsh)
  !!detect_winner(brd, p_hsh, c_hsh)
end 


def detect_winner(brd, p_hsh, c_hsh)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).all?(PLAYER_MARKER)
      p_hsh[:score] += 1
      p_hsh[:round_win] = true
      return p_hsh[:name]
    elsif brd.values_at(*line).all?(COMPUTER_MARKER)
      c_hsh[:score] += 1
      c_hsh[:round_win] = true
      return c_hsh[:name]
    end
  end
  nil
end


## NEED TO KEEP SCORE WITHOUT GLOBAL VARIABLES
# player_score = 0
# computer_score = 0
######

# Main Game Loop
loop do
  # Keep track of game state
  board = initialize_board
  
  player = { :name => "Maya", :score => 0, :round_win =>false, :five_wins=> false }
  computer = { :name => "ChromeOS", :score => 0, :round_win =>false, :five_wins=> false } 


    loop do
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board, player, computer) || board_full?(board) 
      
      computer_places_piece!(board)
      break if someone_won?(board, player, computer) || board_full?(board)
    
    end

    display_board(board)

    if someone_won?(board, player, computer) 
      prompt "#{detect_winner(board, player, computer)} wins!!!"
    else
      prompt "There is a tie."
    end
  
  prompt "Play Again?: (Enter y or n)"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

"Thanks for playing TIC TAC TOE!"

