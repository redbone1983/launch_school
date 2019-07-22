WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals



board = {
  1 => "X", 2 => "X", 3 => "",
  4 => "", 5 => "", 6 => "",
  7 => "", 8 => "", 9 => ""
}

def empty_squares(brd)
  # Iterate through an Array object of Integer keys
  # Select all Integers whose values are an empty string
  # Return Selected Integers in a new Array object
  brd.keys.select { |num| brd[num] == "" }
end

def ai_defense!(brd, win_moves)
  win_moves.each do |line|
    if brd.values_at(*line).first(2).all?("X") &&
      empty_squares(brd).include?(line.last)
        return brd[line.last] = "O"
    elsif brd.values_at(*line).last(2).all?("X") &&
      empty_squares(brd).include?(line.first)
        return brd[line.first] = "O"
    end   
  end
  computer_places_piece!(brd)
end

ai_defense(board, WINNING_LINES)

p board


 
# p board.values_at(*win).last(2) == offense

# if board.values_at(*win).all?("X")


# Check player moves
# player_move = board.values.first(2)
# puts "Player Moves: #{player_move}"

# # Check if first two keys in board
# square_nums = board.keys.first(2)
# p "Board key's 1 & 2: #{square_nums}"

# # Check first to numbers in winning lines arr
# defend1 = WINNING_LINES.dig(0).first(2)
# p "Winning Lines: #{defend1}"

# # Check if player is about to win
# if square_nums == defend1 && player_move == ["X", "X"]
#   # Block players win
#   board[3] = "O"
#   p board
# end





# def ai_defense(brd, wins)
#     wins.map do |line|
#       defense1 = line.first(2)
#       defense2 = line.last(2)

#       # If this is true
#       if brd.keys.first(2) == defense1 && 
#       # And this is true
#       brd.values.first(2).include?("X")
#       # Computer makes this move
#       brd[3] = "O"
#       end
#     end
#    p brd
#     # p brd.values.last(2).include?("X")
#     # p brd.values_at().include?("X")
  
# end

# p ai_defense(board, WINNING_LINES)
# # "Yes" if brd.values_at(num).include?("X")
# # # Destuctive Method


# # p ai_defense(WINNING_LINES)
