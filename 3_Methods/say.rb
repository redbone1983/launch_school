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

