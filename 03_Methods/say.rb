# Methods
# Adding a default parameter structures a method definition to work regardless of if you pass it an argument or not.

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

# Method Definition and Local Variable Scope

# A method definition creates its own scope outside the regular flow of execution. 

# This is why local variables within a method definition cannot be referenced from outside of the method definition. 

# It's also the reason why local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as a parameter).

# Concept Example

a = 5

def some_method()
  a = 3
end

puts a # The value of a is still 5 because METHOD DEFINITIONS create their OWN SCOPE that is entirely outside of the execution flow. 

# Method Invocation with a block
c = 5

[1, 2, 3].each do |num|
  c = 3
  puts num
end

puts c # Unlike the method Definition, this will return 3 because after the c = 5 is initialized in the global scope the value of 3 gets reassigned to 3 within the Method invocation's block

def print_num(num)
  puts num
end

print_num(7)

puts num # This returns a NameError because num is locally scoped within the method definition of "print_num" and not accessible here.


def some_method(number)
  number = 7 # this is implicity returned by the method
end

x = 5
puts some_method(x) # returns 7
# This shows that method definitions cannot modify arguments passed into them permanently.
puts x

