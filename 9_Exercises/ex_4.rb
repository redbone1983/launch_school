# Exercise 4.
# Append "11" to the end of the original array. Prepend "0" to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Append 11
arr.push(11)
p arr 
#=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# Prepend 0
arr.unshift(0)
p arr 
#=> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]