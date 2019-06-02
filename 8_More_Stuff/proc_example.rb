# Procs
# Procs are blocks that are wrapped in a proc object and stored in a variable to be passed around. this is how you define a proc:

# talk = Proc.new do
#   puts "I am talking."
# end

# talk.call # => I am talking.

# # Procs can also take arguments if specified.
# talk = Proc.new do |name|
#   puts "I am talking to #{name}"
# end

# talk.call "Ann Walker" # => I am talking to Ann Walker

# # Procs can be passed into methods. Let's take our previous passing_block.rb code and modify the method to take a proc instead. We'll add some more functionality too.

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
# => I expect this to print the following:

# "1. Proc being called in the method!"
# "2. Proc being called in the method!"
# "3. Proc being called in the method!"
# "4. Proc being called in the method!"
# "5. Proc being called in the method!"

# Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.