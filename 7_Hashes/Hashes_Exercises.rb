# Ex. 1
# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

# family = {  uncles: ["bob", "joe", "steve"],
#   sisters: ["jane", "jill", "beth"],
#   brothers: ["frank","rob","david"],
#   aunts: ["mary","sally","susan"]
# }

# imm_family = family.select { |k, v| k == :sisters || k == :brothers }
# names1 = imm_family.values.flat_map { |v|  v } # OR
# p names1 # => ["jane", "jill", "beth", "frank", "rob", "david"]
# names2 = imm_family.values.flatten { |v|  v }
# p names2 # => ["jane", "jill", "beth", "frank", "rob", "david"]

# # Ex. 2
# # Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

fam1 = { "mom1" => "Maya", "mom2" => "Amanda", "baby1" => "Gilda"  }
fam2 = { "mom3" => "Anne", "mom4" => "Ann", "baby2" => "Argus" }

# Without block
# merged_without_bang = fam1.merge(fam2)
# .merge doesnt mutate original arrays
# p merged_without_bang # => {"mom1"=>"Maya", "mom2"=>"Amanda", "baby1"=>"Gilda", "mom3"=>"Anne", "mom4"=>"Ann", "baby2"=>"Argus"}

# With block
merged_without_bang = fam1.merge(fam2) {|key, value| puts key + value }
p merged_without_bang

merged_with_bang = fam1.merge!(fam2)
# .merge! DOES mutate original fam1 array by adding contents from fam2

# Ex. 3 - Using some of Ruby's built-in Hash methods, 
# 1. write a program that loops through a hash and prints all of the keys. 
# 2. Then write a program that does the same thing except printing the values. 
# 3. Finally, write a program that prints both.

 professions_and_salary = { "info_secure_engineer": 131300, "dev_ops": 137400, "enterprise_architect": 144400, "tech_program_manager": 145000,"software_arch": 145400, "app_arch": 149000, "infrastructure_arch": 153000, "software_dev_manager": 153300, "data_warehouse_manager": 154800, "software_eng_manager": 163500 }

#  professions_and_salary.keys.each { |k| puts "Highest Paid Tech Roles: #{k}" }
#  professions_and_salary.values.each { |v| puts "Highest Salaries from Tech Roles: $#{v}" }

# Solution: 1
def loop_through_hash_keys(hsh)
  hsh.keys.each { |k| puts "#{k}" }
end

# Solution: 2
def loop_through_hash_values(hsh)
  hsh.values.each { |v| puts "$#{v}" }
end

# Solution: 3
def loop_through_hash_key_and_values(hsh)
  hsh.each { |k, v| puts "#{k}: $#{v}" }
end

# Method Chaining for fun 
# => prints salaries sorted from lowest to highest
def loop_through_hash_sort_values(hsh)
  hsh.values.sort.each { |v| puts "$#{v}" }
end
  
# loop_through_hash_keys(professions_and_salary)
# loop_through_hash_values(professions_and_salary)
# loop_through_hash_key_and_values(professions_and_salary)
# loop_through_hash_sort_values(professions_and_salary)


# Ex. 4
# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name] 

# Ex. 5
# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
p person.fetch(:hobbies) # => "painting"

# Ex. 6 - Anagrams
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

words_hash = words.each_with_object(Hash.new []) do |word, hash| hash[word.chars.sort] += [word]
  end

p words_hash.values

# Ex. 7 
# The difference is that the value of "hi there" can only be assigned as the key in my_hash using the rocket => syntax. 
# {x: "some value"} ony works if key is the symbol :x
x = "hi there" 
my_hash = {x: "some value"}
  
# Ex. 8 - B. There is no method called keys for Array objects.
