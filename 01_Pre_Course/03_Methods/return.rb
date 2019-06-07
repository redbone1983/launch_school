# def add_three(number)
#   number + 3 
# end

# returned_value = add_three(4)
# puts returned_value # Returns 7

## Important to know ##
# Ruby methods ALWAYS (implicitly) return the evaluated result of the last line of the expression unless an explicit return comes before it.
## Define IMPLICIT - implied though not plainly expressed.
## Define EXPLICIT - stated clearly and in detail, leaving no room for confusion or doubt.

# To EXPLICITY return a value you can use the 'return' keyword

# def add_three(number)
#   return number + 3
# end

# returned_value = add_three(4)
# puts returned_value

# def add_three(number)
#   return number + 3
#   number + 3 # Because of the Explicit return on line 23, this expression does not get evaluated by the thread of execution
# end

# returned_value = add_three(4)
# puts returned_value

# Chaining Methods

# def add_three(n)
#   n + 3
# end

# # The above method will return - not print out, but return - the value passed in incremented by 3. We can use it like this:

# # add_three(5) # returns 8

# # Since the add_three method call returns a value, we can then keep calling methods on the returned value.

# add_three(5).times { p 'this should print 8 times' }

# Methods as Arguments

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

add(20, 45) # => 65
subtract(80, 10) # => 70

# Ruby actually allows us to pass a method call as an argument to other methods. Stated differently, we're saying we can pass add(20, 45) and subtract(80, 10) as arguments to another method.

# Concept example

def multiply(num1, num2)
  num1 * num2
end

# Pass add(20, 45) and subtract(80, 10) as arguments to multiply:
# p multiply(add(20, 45), subtract(80, 10))

# More complicated example of this:

p add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
# => 560
