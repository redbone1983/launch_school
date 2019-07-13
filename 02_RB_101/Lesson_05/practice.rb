require 'securerandom'

# # How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']

# arr.sort do |a, b|
#     b.to_i <=> a.to_i
# end

# # Practice Problem 2
# # How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by do |book|
#   book[:published]
# end

# # Using the each method, write some code to output all of the vowels from the strings.

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each do |key, val|
#   val.each do |str|
#     str.each_char do |letter| 
#       puts letter if letter.match?(/[aeiouy]/)
#     end
#   end
# end

# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |sub|
#   sub.sort do |a, b|
#     b <=> a
#   end
# end

# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr.map do |hsh|
#   hsh.transform_values { |val| val + 1 }
# end

# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

#   arr.map do |sub_arr|
#       sub_arr.select do |num|
#         num % 3 == 0
#       end
#   end

# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# arr.each_with_object({}) do |sub, hsh|
#   hsh[sub[0]] = sub[1]
# end

# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# arr.sort_by do |sub|
#   sub.select do |num|
#     num.odd?
#   end
# end

# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |_, val|
#   if val[:type] == 'fruit'
#     val[:colors].map { |color| color.capitalize }
#   else
#     val[:size].upcase
#   end
# end

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select do |hsh|
#   hsh.all? do |_, sub_arr|
#     sub_arr.all?{ |num| num.even? }
#   end
# end

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# Using SecureRandom Library Interface
UUID = SecureRandom.uuid
puts "UUID : #{UUID}"

# def uuid_generator
#   chars = []
#   (0..9).each { |num| chars << num.to_s }
#   ('a'..'z').each { |letter| chars << letter }
  
#   uuid = ''
  
#   groups = [8, 4, 4, 4, 12]
#   groups.each_with_index do |section_num, index|
#     section_num.times { uuid << chars.sample }
#     uuid += '-' unless index >= groups.size - 1
#     end
#   uuid

# end

# uuid_generator