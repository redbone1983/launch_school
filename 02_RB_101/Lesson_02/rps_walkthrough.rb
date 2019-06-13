VALID_CHOICES = %w(rock paper scissors)
choices_arr = []

def prompt(message)
  puts "=> #{message}"
end

def display_results(players_choices)
  case players_choices
  when ["rock", "scissors"]
    "You won!"
  when ["paper", "rock"]
    "You are the winner!"
  when ["scissors", "paper"]
    "WINNER!"
  else
    "You lost!"
  end
end

# Main Game Loop
loop do
  choice = ''
  # Get Input and Validate
  loop do
    p choices_arr
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

  prompt("You picked #{choice}. Computer picked #{computer_choice}.")

  # Check if tied
  if choice == computer_choice
    prompt("You are tied.")
    next
  end

  choices_arr[0] = choice
  choices_arr[1] = computer_choice

  p choices_arr

  prompt(display_results(choices_arr))

  # Ask if user want to play again
  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  # End Game if input is anything other that "y"
  break unless answer.downcase.start_with?("y")
end
# Say GoodBye.
prompt("Thanks for playing! Goodbye!")
