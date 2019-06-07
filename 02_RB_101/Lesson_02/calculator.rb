# Use the Kernel.gets() method to retrieve user input, and use 
# Build a command line calculator program that does the following:

# 1. asks for two numbers
# 2. asks for the type of operation to perform: add, subtract, multiply or divide
# 3. displays the result

# Kernel.puts() method to display output. Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().


# First Attempt without Watching Video



# asks for two numbers
print "Please enter a number. "
num_one = Kernel.gets().to_i()
print "Please enter another number. "
num_two = Kernel.gets().to_i()

# asks for the type of operation to perform: add, subtract, multiply or divide
print "What type of operation would you like to perform on these numbers? \nAdd, subtract, multiply or divide? "
operator = Kernel.gets().chomp()

# Use case for conditional assignment and store result
result =
  case operator
  when "add" then num_one + num_two
  when "subtract" then num_one - num_two
  when "multiply" then num_one * num_two
  when "divide" then num_one / num_two
  else "The operator you entered is invalid."
  end

# displays the result
p "The result of #{operator}ing #{num_one} & #{num_two} is #{result}."

# Notes on project refactor:

# Instead of converting operator string to full operation, 
# find a way to Kernel.gets() an actual operator i.e. ( + , - , *, / )

# Edge case handling:
# If user enters uppercase string or chars, apply the downcase method before saving to operator variable

# Fix result of string interpolation typo for "divideing"

# How can I DRY up this code?

# What other ways can I approach the programs logic?



