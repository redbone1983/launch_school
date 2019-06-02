# def has_a_y?(string)
#   if string =~ /y/
#     puts "You have a match!"
#   else
#     puts "Nope!"
#   end
# end

# has_a_y?("maya")

# p /b/.match("bobble")

# Important to Know #

=begin
Variables are pointers to physical space in memory. In other words, variables are essentially labels we create to refer to some physical memory address in your computer.
=end

=begin
From "Fiddling with Ruby’s Fiddle":

"You can get the actual pointer value of an object by taking the object id, and doing a bitwise shift to the left. This will give you the pointer (or memory location) of the ruby object in memory."
=end

# Variables as pointers
a = "hi there"
a_memory_address = a.object_id << 1
p "address for a = #{a_memory_address}"
# => "address for 'a' is 140285577861320"


b = a
# b_memory_address = b.object_id << 1
# p "address for b = #{b_memory_address}"
# # => "address for 'b' = 140285577861320"

a << ", Anne"
a_memory_address = a.object_id << 1
p "address for a after new value assigned = #{a_memory_address}"
# => "address for 'a' after new value assigned = 140285577860600"


b_memory_address = b.object_id << 1
p "address for b after new value assigned to a = #{b_memory_address}"

