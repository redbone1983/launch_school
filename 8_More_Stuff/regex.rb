# def has_a_y?(string)
#   if string =~ /y/
#     puts "You have a match!"
#   else
#     puts "Nope!"
#   end
# end

# has_a_y?("maya")

# p /b/.match("bobble")

# Variables as pointers
a = "hi there"
a_memory_address = a.object_id << 1
p "address for a = #{a_memory_address}"
# => "address for 'a' is 140285577861320"


b = a
b_memory_address = b.object_id << 1
p "address for b = #{b_memory_address}"
# => "address for 'b' = 140285577861320"

a = "not here"
a_memory_address = a.object_id << 1
p "address for a after new value assigned = #{a_memory_address}"
# => "address for 'a' after new value assigned = 140285577860600"
