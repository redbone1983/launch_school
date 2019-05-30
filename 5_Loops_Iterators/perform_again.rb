# do/while loop 

# loop do
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   if answer != 'Y'
#     break
#   end
# end

# Side note: there's also another construct in Ruby that supports "do/while" loops, like this:

begin
  puts "Would you like another go of it?"
  answer = gets.chomp
end while answer == 'Y'


