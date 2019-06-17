# Question 1 : In this hash of people and their age, see if "Spot" is present

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# puts ages["Spot"] ? "Yes" : "No" #=> "No"
# puts ages.fetch("Spot")
# puts ages.key?("Spot")

# Question 2 : Starting with this string:

# munsters_description = "The Munsters are creepy in a good way."

# # (code will be executed on original munsters_description above):

# # Convert the string in the following ways 

# # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# p munsters_description.swapcase!
# # "The munsters are creepy in a good way."
# p munsters_description.capitalize!
# # "the munsters are creepy in a good way."
# p munsters_description.downcase!
# # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
# p munsters_description.upcase!

# Question 3

# We have most of the Munster family in our age hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# # add ages for Marilyn and Spot to the existing hash
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# p ages.merge(additional_ages)

# Question 4

# See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur."

# str_arr = advice.split(" ")
# str_arr.each do |word|
#   if word.include?("dino")
#     puts word
#   end
# end

# Question 5
# Show an easier way to write this array:

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones

# Question 6
# How can we add the family pet "Dino" to our usual array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# p flintstones

# Question 7
# In the previous practice problem we added Dino to our array like this:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones += %w(Dino Hoppy)
# p flintstones

# Question 8
# Shorten this sentence:

# advice = "Few things in life are as important as house training your pet dinosaur."


# new1 = advice.slice(0..38) #=> "Few things in life are as "
# new2 = advice.slice(38..-1)
# p new1
# p new2

# p advice.slice!(0..38)


# Question 9
# Write a one-liner to count the number of lower-case 't' characters in the following string:

# statement = "The Flintstones Rock!"

# p statement.count("t")

# Question 10

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
puts title.center(40)