# Take everything you've learned so far and build a mortgage calculator
# (or car payment calculator -- it's the same thing).
# Translated to Ruby, this is what the formula looks like:
# m = p * (j / (1 - (1 + j)**(-n)))

# Declare methods here
def prompt(message)
  puts "=> #{message}"
end

def valid_string?(str)
  str.class == String
end

def valid_number?(num)
  num.class == Integer
end

def valid_float?(apr_num)
  apr_num.class == Float
end

def round_by_2(long_num)
  long_num.round(2)
end

# User Greeting Loop
name = ""
loop do
  prompt "Welcome to Mortgage Calculator. Please enter your name: "
  name = gets.chomp
  break if valid_string?(name)
end

# Main Loop Starts Here
loop do
  # Init loan variable
  loan = ""
  # GET loan amount from user
  loop do
    prompt "Please enter loan amount: "
    loan = gets.to_i
    # Validate User Input
    if valid_number?(loan)
      prompt "Great. You have entered a loan amount of $#{loan}."
      break
    else
      prompt "#{loan}, is not a valid number."
      prompt "Please enter a valid number."
    end
  end
  # GET Annual Percentage Rate (APR) from user
  apr = ""
  loop do
    prompt "Please enter Annual Percentage Rate amount: "
    apr = gets.to_f
    # Validate User Input
    if valid_float?(apr)
      prompt "Great. You have entered an APR of #{apr}%."
      break
    else
      prompt "#{apr}, is not a valid decimal number."
      prompt "Please enter a valid decimal number."
    end
  end
  # The Loan Term/Duration
  term = ""
  loop do
    prompt "Now, please enter duration in years of loan term: "
    term = gets.to_i
    # Validate User Input
    if valid_number?(term)
      prompt "Great. You have entered a loan term length of #{term} years."
      break
    else
      prompt "#{term}, is not a valid number."
      prompt "Please enter a valid number."
    end
  end
  # Make calculation Prompt
  operator = ""
  loop do
    prompt("Please enter 'Y' to calculate monthly payment.")
    operator = gets.chomp
    if operator == "y" || operator == "Y"
      prompt("Calculating monthly payment...")
      break
    else
      prompt("Invalid entry. Please enter 'Y' to calculate.")
    end
  end

  # Calculate monthly payment operation
  # 1. Convert Yearly Term to Monthly Term
  monthly_term = term * 12

  # 2. Convert Yearly APR to Monthly APR
  monthly_apr = (apr * 0.010) / 12

  # 3. Apply <m = p * (j / (1 - (1 + j)**(-n)))> formula
  # and save value to result variable
 monthly_payment = loan * (monthly_apr / (1 - (1 + monthly_apr)**-monthly_term))
  # 4. Round result 2 decimal places
  result = round_by_2(monthly_payment)

  # Output Results to user
  prompt("Your estimated monthly payment is $#{result}.")
  # Ask if user want to make another calculation
  
  prompt("Would you like to calculate another loan? (y/n)")
  answer = gets.chomp
  if answer.downcase == 'y'
    next
  else
    # Stop Main Loop. End Program.
    break
  end
end
