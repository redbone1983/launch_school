# Question 1
# greeting => nil
# undefined error

# Question 2
# puts greeting => { a: 'hi there' }
# This happens because the (shovel << operator) mutates the caller <informal_greeting> 
# which reference the greetings HASH

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings

# Question 3

# A) => "one", "two", "three"
# B) => "one", "two", "three"
# C) => "two", "three", "one"

# Question 4

# Ben's Original Method
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# My refactored version
def is_an_ip_number?(num)
  (0..255).cover?(num) 
end

def dot_separated_ip_address?(input_string)
  return false unless input_string.class == String
  
  dot_separated_words = input_string.split(".")
  
  return false unless dot_separated_words.size == 4 
    
    dot_separated_words.each do |word|
      word = word.to_i
      return false unless is_an_ip_number?(word)
    end

  true
end

p dot_separated_ip_address?("10.4.5.11") #=> true
p dot_separated_ip_address?("4.5.5") #=> false
p dot_separated_ip_address?("1.2.3.4.5") #=> false
p dot_separated_ip_address?(0) #=> false

