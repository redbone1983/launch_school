# loop = true

# if loop
#   puts 'Just keep printing...'
#   loop = false
# end

# outer_loop_count = 0
# inner_loop_count = 0

# loop do
#   break if outer_loop_count == 1
#   puts 'This is the outer loop.'
#   outer_loop_count += 1
#   loop do
#     break if inner_loop_count == 1
#     puts 'This is the inner loop.'
#     inner_loop_count += 1
#   end
# end

# puts 'This is outside all loops.'

# def loop_outer(count_1)
#   count_1.times { puts 'This is the outer loop.' }
#   def loop_inner(count_2)
#     count_2.times { puts 'This is the inner loop.'}
#   end
#   loop_inner(1)
# end

# loop_outer(1)



# def loop_inner(count)
#   if count == 1
#     puts("This is the inner loop")
#   end
#   puts 'This is outside all loops.'
# end

# def loop_outer(count)
#   if count == 1
#     puts "This the outer loop"
#   end
#   loop_inner(1)
# end

# loop_outer(1)


# iterations = 1

# loop do
#   break if iterations == 6
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer.downcase == "yes"
# end

# say_hello = true

# while say_hello
#   5.times { puts "Hello!" }
#   say_hello = false
# end

# numbers = []

# while numbers.length < 5
#   numbers << rand(0..99)
# end

# puts numbers

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# idx = 0

# until idx == numbers.size
#   puts numbers[idx]
#   idx += 1
# end

# for i in 1..100
#   if i % 2 != 0
#     puts i
#   end
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for name in friends
#   puts "Hello #{name}!"
# end

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect
# puts s.split(',').inspect
# puts s.split(',', 2).inspect




