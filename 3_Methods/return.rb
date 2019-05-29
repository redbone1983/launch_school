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

def add_three(number)
  return number + 3
  number + 3 # Because of the Explicit return on line 23, this expression does not get evaluated by the thread of execution
end

returned_value = add_three(4)
puts returned_value