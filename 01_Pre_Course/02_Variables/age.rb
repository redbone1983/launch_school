# Exercise 2
# Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. 

print "How old are you ?"
# First convert user's input into an integer using the to_i method
user_input = gets.to_i

# Then use string interpolation to embed and render the results of the expression "user_input + x" when the 'puts' method prints the string to the console

puts "In 10 years you will be #{user_input + 10}"
puts "In 20 years you will be #{user_input + 20}"
puts "In 30 years you will be #{user_input + 30}"
puts "In 40 years you will be #{user_input + 40}"