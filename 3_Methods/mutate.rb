# Mutating the caller - when calling(invoking) a method, the argument can be altered permanently. 

# Define Caller - The argument that is passed into the method when it is invoked. 

# Note on using p vs. puts - 
# arr = [2, 4, 6]
# => p arr will return full array [2, 4, 6]
# => puts arr will return just the integer values 2, 4, 6

a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

# We print out a as we initially defined it.
p "Before mutate method: #{a}" # => [1, 2, 3]"

# We print out the value returned by the mutate method.
p mutate(a) # => 3

# We print out the value of a after the mutate method.
p "After mutate method: #{a}" # [1, 2]


# Notice the difference between each print out? We have permanently modified the local variable a by passing it to the mutate method, even though a is outside the method definition's scope. 

## This is because the pop method mutates the caller. ##

# The following method does not mutate the caller.

# a = [1, 2, 3]

# def no_mutate(array)
#   array.last
# end

# p "Before no_mutate method: #{a}"
# p no_mutate(a) # returns the last element in the array [3]
# p "After no_mutate method: #{a}" # returns [1, 2, 3] because the original array does not change

# puts vs return

## Important to Know
# In Ruby, every method returns the evaluated result of the last line that is executed.
