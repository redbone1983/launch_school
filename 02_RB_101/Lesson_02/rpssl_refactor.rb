# Initialize array of valid choices
VALID_CHOICES = %w(r p s sp l)

weapons = {
  rock: "r",
  paper: "p",
  scissors: "s",
  spock: "sp",
  lizard: "l"
}

# Initialize empty array to store players choices
choices_arr = []

 # Init Hash of winning arrays
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


# Start Main Loop
loop do
  human_choice = ""
  # Welcome player/ Get Input
  loop do
    prompt("Welcome to Rock, Paper, Scissors, Spock, Lizard.")
    prompt("Please enter: \n[r] for Rock\n[p] for Paper\n[s] for scissors\n[sp] for Spock\n[l] for lizard")
    human_choice = gets.chomp
    # Validate input
    # Validate human input
    if VALID_CHOICES.include?(human_choice)
      break
    else
      prompt("Please enter a valid input.")
    end
  end
  # Convert letter to word
  human_weapon = weapons.key(human_choice)
  # Get computer input
  computer_choice = VALID_CHOICES.sample
  comp_weapon = weapons.key(computer_choice)
  
  choices_arr[0] = human_choice
  choices_arr[1] = computer_choice
  
  if win.has_value?(choices_arr)
    prompt("You won! Your #{human_weapon} #{win.key(choices_arr)} #{comp_weapon}!")
  elsif human_weapon == comp_weapon
    prompt("There is a tie. #{comp_weapon} kills #{human_weapon}.")
  else
    prompt("You lost! Computer's #{comp_weapon} #{win.key(choices_arr.reverse)} #{human_weapon}!")
  end

  # Ask if user want to play again
  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  # End Game if input is anything other that "y"
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for playing. Goodbye!")