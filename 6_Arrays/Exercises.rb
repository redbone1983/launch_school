# Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# p arr.include?(number)
   
# Exercise 2

# arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)
 # => returns index of element deleted in first nested array => 1

# arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
# => returns nested array with elements of the range 1, 2, 3 deleted in first nested array => [1, 2, 3]

# Exercise 3

# arr[1][0]
# # OR
# array.last.first


# # What does each method return in the following example?

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5) # => 3

# 2. arr.index[5] # => undefined

# 3. arr[5] # => 8

# What is the value of a, b, and c in the following program?

# a = 'e'
# b = 'A'
# c = undefined

# 6. need to access element in names array by index
# names = ['bob', 'joe', 'susan', 'margaret']
# names[3] = 'jody' # => ['bob', 'joe', 'susan', 'jody']

# 7. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

og_arr = [1, 2, 3, 4, 5]
new_arr = og_arr.map { |num| num + 2 }
p og_arr # => [1, 2, 3, 4, 5]
p new_arr # => [3, 4, 5, 6, 7]



