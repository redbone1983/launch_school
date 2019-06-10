require "yaml"
MESSAGES = YAML.load_file("calculator_messages.yml")

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_string?(str)
  str.to_s != 0
end

def valid_number?(num)
  num.to_i.class == Integer
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
name = ""
loop do
  prompt("Thank you for using calculator! Enter your name: ")
  name = Kernel.gets().chomp()
  if valid_string?(name)
    prompt(MESSAGES["mes_02"] + "#{name}.")
  else
    prompt(MESSAGES["mes_03"])
  end
  break
end

# Initialize Main Loop
count = 0
loop do
  number1 = ""
  loop do
    # Use Ternary Operator for optional greeting for return users
    count == 1 ? prompt(MESSAGES["mes_04"] + "#{name}.") : nil
    count > 1 ? prompt(MESSAGES["mes_04"] + "#{name}.") : nil
    # Prompt user for number 1
    prompt(MESSAGES["mes_06"])
    number1 = Kernel.gets().chomp()
    # Invoke Number Validation Method
    if valid_number?(number1)
      break
    else
      prompt(MESSAGES["mes_08"])
    end
  end

  number2 = ""
  loop do
    # Prompt user for number 2
    prompt(MESSAGES["mes_07"])
    number2 = Kernel.gets().chomp()
    # Invoke Number Validation Method
    if valid_number?(number2)
      break
    else
      prompt(MESSAGES["mes_08"])
    end
  end

  operator = ""
  loop do
    operator_prompt = <<-MSG
    "What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
    prompt(operator_prompt)
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      prompt("#{operation_to_message(operator)} the two numbers...")
      break
    else
      prompt(MESSAGES["mes_10"])
    end
  end

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
    else MESSAGES["mes_11"]
    end

  prompt(MESSAGES["mes_12"] + "#{result}")

  prompt(MESSAGES["mes_13"])
  answer = Kernel.gets().chomp()
  if answer.downcase().start_with?("y")
    count += 1
    next
  else
    break
  end
end

prompt(MESSAGES["mes_14"] + "#{name}!")
