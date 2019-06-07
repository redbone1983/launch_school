# Exercise 1
# Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name)
  "Howdy, #{name}!"
end

p greeting('Maya')

# Exercise 3
# Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

p multiply(5, 7)

# Exercise 5 - Edit Exercise 4
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# Exercise 6
def calculate_product(x, y)
    x * y
end

calculate_product(4) # Returns the ArgumentError because I am passing in 1 arg instead of two. Therefore, hindering the method unable to calculate the product of x & y
