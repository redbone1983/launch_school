def greet(person)
  puts "Hello, " + person
end

greet("John") # call-stack =  main -> greet -> puts -> exit and return to main
greet(1) # call-stack = main -> greet -> puts

# Returns the following error:
# My line by line interpertation of what this Stack Traceback means before looking at the documentation.

#Traceback (most recent call last):

# The stack trace first tells us where the error occurred and why:

# Where in main/global execution context?

# Where? last method invocation of greet(1)
# Where? 2: from greeting.rb:6:in `<main>'

# - 2: = Line 2 of code
# - from greeting.rb = from greeting.rb file
# - :6 = located on Line 6
# - in `<main' = scoped within <main> (window or browser) Global Variable Environment

# Where in Local execution context?

# Where? 1: from greeting.rb:2:in `greet'

# Where? 1: = Line 1 of code
# Where? from greeting.rb = from greeting.rb file
# Where? :2 = located on line 2
# Where? in `greet' = scoped within the greet methods Local variable environment
# Where? greeting.rb:2

# Why the error occurs?

# This is the error type: and the error message.
# greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError)

# Why? :in `+': = Operation that invokes TypeError message

# Trying to Implicitly add(+) a string to an Integer before converting it to a string.



