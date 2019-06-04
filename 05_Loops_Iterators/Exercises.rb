# # Exercise 1
# # => [1, 2, 3, 4, 5]


# # x = [1, 2, 3, 4, 5]
# # x.each do |a|
# #   a + 1
# # end

# # Exercise 2

# def pester(user_input)
#   while user_input != "STOP"
#     p "Please Enter STOP and I will leave you alone. " 
#     user_input = gets.chomp
#   end
# end

# p "Please Enter STOP and I will leave you alone. " 
# user_input = gets.chomp

# pester(user_input)

# # Exercise 4 

# names = ['Amanda', 'Gilda', 'Maya', 'Anne', 'Ann', 'Argus']

# names.each_with_index{ |name, i| puts "#{i}: #{name}" }

# Exercise 5 
def countdown(num)
  puts num
  if num != 0
    countdown(num - 1) 
  end
end
 
countdown(10)
