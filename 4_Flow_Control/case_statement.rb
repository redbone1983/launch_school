# a = 7

# answer = case a
# when 5
#  "a is 5"
# when 6
#  "a is 6"
# else
#  "a is neither 5, nor 6"
# end

# puts answer

# if a = 5 # this assigns the a the value of 5 which is a truthy value
#   puts "how can this be true"
# else
#   puts "it is not true"
# end

# Exercise 1

=begin
1. false
2. false
3. false
4. true
5. true
=end

# Exercise 2

# Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

# def all_caps(str)
#   if str.length > 10
#     str.upcase!
#   else
#     "This string is not long enough!"
#   end
# end

# p all_caps("hello world")

# Exercise 3
# Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

# print "Enter a number between 0 and 100. "
# number = gets.to_i


# if number < 0 
#   p "You can't enter a negative number."
# elsif number <= 50 
#   p "Your number is between 0 and 50"
# elsif number <= 100
#   p "Your number is between 51 and 100"
# else
#   p "Your number is greater than 100"
# end

# Exercise 4
=begin
1. "FALSE"
2. "Did you get it right?"
3. "Alright now!"
=end

def num_check(number)
  case 
  when number < 0 
    "You can't enter a negative number."
  when number <= 50 
    "Your number is between 0 and 50"
  when number <= 100
    "Your number is between 51 and 100"
  else
    "Your number is greater than 100"
  end
end

p "Please enter a number between 0 and 100. "
number = gets.to_i

p num_check(number)