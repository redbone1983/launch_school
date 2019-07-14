# Example 1

# Take a moment to digest the following example:

# [[1, 2], [3, 4]].each do |arr|
#   puts arr.first
# end
# 1
# 3
# => [[1, 2], [3, 4]]

# So what's happening in this, seemingly simple, piece of code? 
# Take it apart and try to describe every interaction with precision.

# .each method is invoked on the top level of the nested array.
#>>> [[1, 2], [3, 4]]

# .each iterates over each inner Array object starting at index 0
# First iteration
# Each inner array is passed to the block in turn 
# and assigned to the local variable arr

#>>> [1, 2]

# the .first method within the .each method is invoked on the first inner Array object [1, 2]
# .first returns the the value of what is stored at index 0 in [1, 2] 
#>>> 1

# Kernel.puts method outputs the string value of '1' to the console
#=> 1

# Second iteration
# .each iterates over inner Array object at index 1
#>>> [3, 4]

# the .first method within the .each method is invoked on the second inner Array object [3, 4]
# .first returns the the value of what is stored at index 0 in [3, 4] 
#>>> 3

# Kernel.puts method outputs the string value of '3' to the console
# Kernel.puts returns nil
#=> 3

# .each iteration ends and .each block returns the orginal array [[1, 2], [3, 4]]

# Example 8
# Select integers greater than 13 but strings less than 6 characters

# new_arr = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |sub_array|
#   sub_array.select do |item|
#     if item.class == Integer
#       item > 13
#     elsif item.class == String
#       item.length < 6
#     end
#   end
# end

# p new_arr
#=> [[27], ['apple']]

# Example 10

# Let's say we have the following data structure of nested arrays 
# and we want to increment every number by 1 without changing the data structure.

new_arr = [[[1, 2], [3, 4]], [5, 6]].map do |element2|
  element2.map do |element3|
    if element3.class == Array
      element3.map do |num|
        num + 1
      end
    else
      element3 + 1
    end
  end
end

p new_arr
#=> [[[2, 3], [4, 5]], [6, 7]]

