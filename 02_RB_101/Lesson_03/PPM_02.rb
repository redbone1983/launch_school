# Question 1
# Question 2

# Question 3

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   puts a_string_param
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# #=> My string looks like this now: pumpkins 
# # This is because (+= operator) DOES NOT mutate the caller
# puts "My array looks like this now: #{my_array}"
# # My array looks like this now: ["pumpkins", "rutabaga"] 
# # This is because (<< operator) DOES mutate the original caller (my_array)

# Question 4
# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
#   puts "Inner my_array: #{an_array_param.object_id}"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# puts "Outer my_array: #{my_array.object_id}"
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# #=> Returns modified my_string
# puts "My array looks like this now: #{my_array}"
#=> Returns the original array value because assignment to an outer variable within a method
# does not mutate the caller but instead reassigns ['pumpkin', 'rutabaga'] to a new Array object with the label: an_array_param

# my_array(Outer) == ["pumpkin"] => object_id: 70258434246880
# an_array_param(Inner) = my_array => object_id: 70258434246680

# Question 5

# def tricky_method(a_string_param, an_array_param, str_input)
#   new_string = a_string_param.concat str_input
#   new_array = an_array_param.push str_input
#   "Your input for a_string_param returns: #{new_string}. \nYour input for an_array_param returns: #{new_array}."
# end

# puts tricky_method("pumpkins", ["pumpkins"], "rutabaga")

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   p a_string_param, an_array_param

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Question 6
# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid("blue") #=> true