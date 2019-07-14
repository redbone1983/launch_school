# Shallow Copy and Variable Pointers

# arr1 = ["a", "b", "c"]
# arr2 variable is initialized and points to -> 
# the returned value of .dup method -> 
# which is the Array object ["a", "b", "c"] that the variable arr1 points to

# A shallow copy is made of the Array object that arr1 points to
# and arr2 points to this shallow copy
# arr2 = arr1.dup

# The address for each Array object is different

# p arr1.object_id #=> 70331893304160
# p arr2.object_id #=> 70331893304140

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

# # Because .dup only copies the outer Array Object and still share each String Object,
# # Both arr1 & arr2 reflect the changes returned from the .upcase! method because it 
# is direvtly invoked on the shared object and not on the collection (Array Object)

# arr2 # => ["a", "B", "c"]
# arr1 # => ["a", "B", "c"]

# Freezing Objects
# .freeze method prevents forther modification to an obj.

# .clone preserves the frozen state of an object
# arr1 = ["a", "b", "c"].freeze
# arr2 = arr1.clone
# arr2 << "d" #=> RunTime Error: can't modify frozen array

# .dup doesnt preserve the frozen state of an object
# arr1 = ["a", "b", "c"].freeze
# p "arr1 id: #{arr1.object_id} before .dup method"
# arr2 = arr1.dup
# p "arr2 id: #{arr2.object_id} before << d"
# arr2 << "d"

# p arr2 #=> ["a", "b", "c", "d"]
# p arr1 #=> ["a", "b", "c"]

# p "arr2 id: #{arr2.object_id}"
# p "arr1 id: #{arr1.object_id}"



