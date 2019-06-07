# Blocks
# Blocks, like parameters, can be passed into a method just like normal variables.
# The ampersand (&) in the method definition tells us that the argument is a block. You could name it anything you wanted. The block must always be the last parameter in the method definition. When we're ready to use the method, we call it like any other method: take_block. The only difference is that because this method can accept a block, we can pass in a block of code using do/end

# def take_block(&block)
#   block.call
# end

# take_block do 
#   puts "Block being called in the method!"
# end



# def another_block(&block)
#   block.call
# end

# another_block do
#   puts "This string is being called from inside of another_block method!"
# end

# another_block do
#   puts 7 ** 2
# end

# Let's make this more complex. Say we wanted to pass an argument to the method as well.

# def take_block(number, &block)
#   block.call(number)
# end

def take_block(username, &block)
  block.call(username)
end

username = "Anne Lister"
take_block(username) do |name|
  puts "#{name}, Welcome to the global environment! "
end

# => Anne Lister, Welcome to the global environment!

