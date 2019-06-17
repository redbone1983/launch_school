# 1. =>
        # 1
        # 2
        # 3
        # 4

# 2. 

  # 1. != combines the bang (NOT) operator with the = assignment operator.
  # != should be used in a conditional statement where the operands are expected not to match
  
  # 2. ! - This negates an objects boolean value
  
  # 3. words.uniq! usually refers named methods that are destructive/mutable. 
  
  # 4. condition ? true : false => used in ternary operator
  
  # 5. a_method? is not a part of the ruby syntax but a naming convention for methods that are expected to return a boolean value
  
  # 6. !!<object> turns an object into their boolean value => \
  # !!user_name => true
  # !!nil => false

# 3. advice = "Few things in life are as important as house training your pet dinosaur."

# advice.sub! 'important', 'urgent'
# advice["important"] = "urgent"

# puts advice

# 4. Both methods are mutate the caller and don't have a ! at the end

# numbers = [1, 2, 3, 4, 5]

# # numbers.delete_at(1) # => delete element stored at index 1 in array
# # puts numbers # => [1, 3, 4, 5]

# numbers.delete(1) #=> Deletes element value == 1
# puts numbers # => [2, 3, 4, 5]

# 5. 
# num = 42
# case num
# when 10..100 then puts "#{num} is between 10..100"
# else 
#   puts "It is not."
# end


# 6. 

# famous_words = "seven years ago..."

# puts "Four score and " << famous_words
# puts "Four score and " + famous_words

# 7.

# def add_eight(number)
#   number + 8
# end

# number = 2

# how_deep = "number"
# 5.times { how_deep.gsub!("number", "add_eight(number)") }

# p eval(how_deep)

# 8. 

# flintstones = ["Fred", "Wilma"]
# flintstones += ["Barney", "Betty"]
# flintstones += ["BamBam", "Pebbles"]

# p flintstones #=> ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

# my_flatten by 1 level
def my_flatten(arr)
  flat = []
  arr.each do |item|
   if item.class == Array
    item.each { |value| flat << value }
   else
    flat << item
   end
  end
  flat
end


def recurse_flatten(array, results = [])
  array.each do |element|
    if element.class == Array
      recurse_flatten(element, results)
    else
      results << element
    end
  end
  results
end
  

flintstones = ["Fred", ["Wilma", ["Jetsons"]], ["Barney", ["Betty"]], ["BamBam", "Pebbles"]]

p recurse_flatten(flintstones)

# 9. 

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.rassoc(2) #=> ["Barney", 2]