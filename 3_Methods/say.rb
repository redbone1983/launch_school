# Methods
# Adding a default parameter structures a method definition to work regardless of if you pass it an argument or not.

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

