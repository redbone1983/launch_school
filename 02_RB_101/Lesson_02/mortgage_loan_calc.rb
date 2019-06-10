# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).
# Translated to Ruby, this is what the formula looks like:
# m = p * (j / (1 - (1 + j)**(-n)))
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_string?(str)
  str.class == String
end

def valid_number?(num)
  num.to_i.class == Integer
  num.to_i
end

def valid_float?(apr_num)
   apr_num.to_f == Float
   apr_num.to_f
end

# User Greeting
name = ""
loop do
prompt "Welcome to Mortgage Calculator. Please enter your name: "
name = gets.chomp
  if valid_string?(name)
    prompt "Hello, #{name}."
  else
    prompt "Please enter a valid name."
  end
  # Break out of loop and on to next execution context.
  break
end

# Main Loop Starts Here
loop do
  # GET loan amount from user
  loan = ""
  loop do
    prompt "Please enter loan amount: "
    loan = gets.chomp
    loan = loan.to_i
    # Validate User Input
    if valid_number?(loan)
      prompt "Great. You have entered a loan amount of #{loan}."
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
    apr = gets.chomp
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
    term = gets.chomp
    # Validate User Input
    if valid_number?(term)
      prompt "Great. You have entered a loan term length of #{term} years."
      break
    else
      prompt "#{term}, is not a valid number."
      prompt "Please enter a valid number."
    end
  end
  # Make calculation Prompt?
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
  monthly_term = term.to_i * 12
  
  # 2. Convert Yearly APR to Monthly APR
  monthly_apr = (apr.to_f * 0.010) / 12

  # 3. Apply <m = p * (j / (1 - (1 + j)**(-n)))> formula
  # and save value to result variable
  result = loan * (monthly_apr / (1 - (1 + monthly_apr)**(-monthly_term)))
  # 4. Round result 2 decimal places
  result = result.round(2)
  
  # Output Results to user
  prompt("Your estimated monthly payment is $#{result}.")

  # Stop Main Loop. End Program.
  break
end

# Finally, don't forget to run your code through Rubocop.

