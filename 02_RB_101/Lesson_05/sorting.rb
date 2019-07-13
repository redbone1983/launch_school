arr1 = ['340', '15', '1', '3400']

# a <=> b

# 1 if a > b
# 0 if a == b
# -1 if a < b

arr1[0] <=> arr1[1] #=> 1
arr1[1] <=> arr1[2] #=> 1
arr1[2] <=> arr1[3] #=> -1

arr2 = ['1', '340', '15', '3400']

arr2[0] <=> arr2[1] #=> -1
arr2[1] <=> arr2[2] #=> 1
arr2[2] <=> arr2[3] #=> -1

arr3 = ['1', '15', '340', '3400']

arr3[0] <=> arr3[1] #=> -1
arr3[1] <=> arr3[2] #=> -1
arr3[2] <=> arr3[3] #=> -1

# If all items compared in an array return -1
# then our array is sorted in ascending order
# (least to greatest)

# If all items compared in an array return 1
# then our array is sorted in descending order
# (greatest to least)

# If all items compared in an array return 0
# then our array contains items that are equal to eachother
arr4 = [2, 5, 3, 4, 1]

arr4.sort do |a, b|
  puts "Index of a is #{arr4.index(a)}"
  puts "Index of b is #{arr4.index(b)}"
  puts "a is #{a} and b is #{b}. Sorted? = #{a < b}"
  puts
  a <=> b
end
