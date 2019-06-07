# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# gets - pauses the program, wait for the user to input something and then hit the enter key to end programs execution

# Capture user input in a variable
# answer = gets
# # Prints output
# puts answer

# # gets and puts are located in a module called Kernel
# Kernel.gets()
# Kernel.puts()

# Welcome users
Kernel.puts("Welcome to Calculator!")

# Prompt user for numbers
Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("what operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

# result is available outside of the if condition because it is not a block
if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
elsif operator == '4'
  # Convert string into float representation with .to_f()
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")




# Kernel.gets automatically returns a string with "\n" appended "string\n"
# Add .chomp() to remove "\n" character - Kernel.gets().chomp()


