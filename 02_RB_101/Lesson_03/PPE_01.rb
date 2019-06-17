# 1. [1, 2, 3]
# 2. 
  # 1. != combines the bang (NOT) operator with the = assignment operator.
  # != should be used in a conditional statement where the operands are expected not to match

  # 2. ! - This check if the value of username falsy
  # 3. words.uniq! makes it so that the words object can be mutated by the .uniq method directly
  # 4.  

# 3. advice = "Few things in life are as important as house training your pet dinosaur."

# advice.sub! 'important', 'urgent'
# advice["important"] = "urgent"

# puts advice

# 4. 

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

flintstones = ["Fred", "Wilma"]
flintstones += ["Barney", "Betty"]
flintstones += ["BamBam", "Pebbles"]

p flintstones #=> ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

# 9. 

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# p flintstones.rassoc(2) #=> ["Barney", 2]