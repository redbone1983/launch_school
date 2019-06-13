VALID_CHOICES = ["rock", "paper", "scissors"]
choices_arr = []

def prompt(message)
  puts "=> #{message}"
end

# input => players_choices = [human_choice, computer_choice]
# compare players_choices array with case conditionals array
# players_choices array == case conditional array ? "you won!" : "you lost!"
# This case is only checking if human_choice is the first value in array
# If human_choice is not the irst value in array, then human_choice returns "You lost"
def display_results(players_choices)
  case players_choices
  when ["rock", "scissors"] || ["paper", "rock"] || ["scissors", "paper"]
    "You won!"
  else
    "You lost!"
  end
end

# Main Game Loop
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}?")
    choice = gets.chomp
    # validate human input
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  # store computer input
  computer_choice = VALID_CHOICES.sample
  
  # This if statement handles the edge case of when (human_choice == computer_choice)
  if choice == computer_choice
    prompt("You are tied.")
    break
  end
  
  # First Append human choice onto empty array
  choices_arr[0] = choice
  # Second Append computer choice onto array
  choices_arr[1] = computer_choice
  
  # Output what each player chose. 
  # (This serves as a builtin test to see if program is functional.)
  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")
  prompt("Choices array: #{choices_arr}")
  
  # Invoke display_results => "You Lost!" || "You Won!" depending on results
  # from case statment
  prompt(display_results(choices_arr))

  # Ask if user want to play again
  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  # End Game if input is anything other that "y"
  break unless answer.downcase.start_with?("y")
end
# Say GoodBye.
prompt("Thanks for playing! Goodbye!")
