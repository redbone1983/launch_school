# Initialize array of valid choices
VALID_CHOICES = %w(r p s sp l)

# Initialize weapons hash
weapons = {
  rock: "r",
  paper: "p",
  scissors: "s",
  spock: "sp",
  lizard: "l"
}

# Initialize empty array to store players choices
choices = []

# Initialize hash of winning combinations
win = {
  cuts: ["s", "p"],
  covers: ["p", "r"],
  crushes: ["r", "l"],
  poisons: ["l", "sp"],
  smashes: ["sp", "s"],
  decapitates: ["s", "l"],
  devours: ["l", "p"],
  disproves: ["p", "sp"],
  vaporizes: ["sp", "r"],
  breaks: ["r", "s"]
}

# Prompt method
def prompt(message)
  puts "=> #{message}"
end

# Initialize level 1 variables
champion = false
game_count = 0
human_points = 0
comp_points = 0

# Start Main Game Loop
loop do
  human_choice = ""

  # Welcome player/ Get Input Loop
  loop do
    welcome_prompt = <<-MSG
    Welcome to Rock, Paper, Scissors, Spock, Lizard.
    "Best out of 5 wins. Good Luck!"
    MSG

    weapons_prompt = <<-MSG
    Please choose your weapon:
      'r' for Rock
      'p' for Paper
      's' for Scissors
      'sp' for Spock
      'l' for Lizard
    MSG

    # Use Ternary Operator for optional greeting for return users
    game_count == 0 ? puts(welcome_prompt) : nil
    puts(weapons_prompt)
    human_choice = gets.chomp

    # Validate human input
    if VALID_CHOICES.include?(human_choice)
      break
    else
      prompt("Please enter a valid input.")
    end
  end

  # Get computer input
  computer_choice = VALID_CHOICES.sample

  # Convert letter input to word
  h_weapon = weapons.key(human_choice)
  c_weapon = weapons.key(computer_choice)

  # Assign ordered choices to array
  choices[0] = human_choice
  choices[1] = computer_choice

  # Winner Prompt & tally points
  if win.value?(choices)
    game_count += 1
    human_points += 1
    prompt("You won this round!")
    prompt("Your #{h_weapon} #{win.key(choices)} #{c_weapon}!")
  elsif h_weapon == c_weapon
    prompt("There is a tie. #{c_weapon} kills #{h_weapon}.")
  else
    comp_points += 1
    prompt("You lost this round!")
    prompt("Computer's #{c_weapon} #{win.key(choices.reverse)} #{h_weapon}!")
  end

  prompt("Current Score is You: #{human_points} & Computer: #{comp_points}.")

  # Check points for winner
  if human_points == 5
    champion = true
    prompt("You are the champion!")
  elsif comp_points == 5
    champion = true
    prompt("Computer reigns supreme!")
  end

  # Ask if user want to play again
  if champion
    prompt("Do you want to play again?(y/n)")
    answer = gets.chomp
    if answer.downcase().start_with?("y")
      next
    else
      break
    end
  end
end

prompt("Thanks for playing. Goodbye!")
