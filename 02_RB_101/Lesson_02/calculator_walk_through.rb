def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_string?(str)
  str.to_s != 0
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

# Welcome users
count = 0
name = ""
loop do
  prompt("Welcome to Calculator! Enter your name:")
  name = Kernel.gets().chomp()
  if valid_string?(name)
    prompt("Hello, #{name}.")
  else
    prompt("Hmm... that doesn't look like a valid name.")
  end
  break
end

# Initialize Main Loop
loop do
  number1 = ""
  loop do
    # Use Ternary Operator for optional greeting for return users
    count == 1 ? prompt("Welcome back, #{name}. You have calculated #{count} time today.") : nil
    count > 1 ? prompt("Welcome back, #{name}. You have calculated #{count} times today.") : nil
    # Prompt user for number 1
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    # Invoke Number Validation Method
    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  number2 = ""
  loop do
    # Prompt user for number 2
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    # Invoke Number Validation Method
    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
    "What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ""
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =
    case operator
    when "1"
      number1.to_i() + number2.to_i()
    when "2"
      number1.to_i() - number2.to_i()
    when "3"
      number1.to_i() * number2.to_i()
    when "4"
      number1.to_f() / number2.to_f()
    else "The operator you entered is invalid."
    end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
  # Initialize game count
  count += 1
end

prompt("Thank you for using the calculator! Goodbye #{name}!")
