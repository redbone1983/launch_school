# count = 1

# loop do
#   break if count > 5
#   if count % 2 != 0
#     puts "#{count} is odd!"
#   else
#     puts "#{count} is even!"
#   end
#   count += 1
# end

# loop do
#   number = rand(100)
#   if ((1..10) === number)
#     break
#   end
#   puts number
# end

# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
  
#   if answer == 4
#     puts "That's correct!"
#     break
#   end
    
#   puts "Wrong answer. Try again!"
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   break if names.empty?
#   puts names.pop
# end

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# number = 0

# until number == 10
#   number += 1
#   if number % 2 != 0
#     next
#   else
#     puts number
#   end
# end

# number_a = 0
# number_b = 0

# loop do
#   if number_a != 5
#     number_a += rand(2)
#     puts number_a
#     next
#   elsif number_b != 5
#     number_b += rand(2)
#     puts number_b
#     next
#   else
#     puts "5 was reached!"
#     break
#   end
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

