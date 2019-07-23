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

# I need to DRY up ai_offense & ai_defense
def ai_offense!(brd, win_moves)
  win_moves.each do |line|
    if brd.values_at(*line).first(2).all?("O") &&
      empty_squares(brd).include?(line.last)
        return brd[line.last] = "O"
    elsif brd.values_at(*line).last(2).all?("O") &&
      empty_squares(brd).include?(line.first)
        return brd[line.first] = "O"
    end  
  end
  computer_places_piece!(brd)
end

ai_defense(board, WINNING_LINES)

p board

# AI OFFENSE
# The logic is simple: if the computer already has 2 in a row, then fill in the 3rd square, as opposed to moving at random.


