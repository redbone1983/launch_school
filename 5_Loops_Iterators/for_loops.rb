# Countdown version 3
# Range - A range is a special type in Ruby that captures a range of elements. For example 1..3 is a range that captures the integers 1, 2, and 3.

x = gets.to_i

# For each element within the range of 1 and x (a.k.a. user's input) print element
for i in 1..x do
  puts i
end

puts "Done!"
# =>
=begin
5
1 
2 
3 
4
5
=end

# Important to Remember #
# The odd thing about the for loop is that the loop returns the collection of elements after it executes, whereas the earlier while loop examples return nil. Let's look at another example using an array instead of a range.

x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts "Finished!"

# => returns [1, 2, 3, 4, 5]
i = 0
x = [1, 2, 3, 4, 5]

while i < (x.length)
  puts x[i]
  i += 1
end



