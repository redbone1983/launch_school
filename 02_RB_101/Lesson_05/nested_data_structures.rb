# Shallow Copy and Variable Pointers

arr1 = ["a", "b", "c"]
# arr2 variable is initialized and points to -> 
# the returned value of .dup method -> 
# which is the Array object ["a", "b", "c"] that the variable arr1 points to

# A shallow copy is made of the Array object that arr1 points to
# and arr2 points to this shallow copy
arr2 = arr1.dup

# The address for each Array object is different

p arr1.object_id #=> 70331893304160
p arr2.object_id #=> 70331893304140

# The address for each String object remains unchanged

# p arr1[1].object_id #=> 70092965432540
# p arr2[1].object_id #=> 70092965432540

# # The destructive <upcase!> method is invoked
# # on the String Object stored at index 1 of the Array object that arr2 is pointing to -> "b"
# arr2[1].upcase!

# # Although, the address in memory references a new String Object id,
# # Because of the shallow copy, Each Array[index] -> still points to the same String Object Id

# p arr1[1].object_id #=> 70358216805620
# p arr2[1].object_id #=> 70358216805620

# # Because .dup only copies the outer Array Object and not each String Object,
# # Both arr1 & arr2 reflect the changes returned from the .upcase! method

# arr2 # => ["a", "B", "c"]
# arr1 # => ["a", "B", "c"]

