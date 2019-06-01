# Ex. 1
# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

imm_family = family.select { |k, v| k == :sisters || k == :brothers }
names1 = imm_family.values.flat_map { |v|  v } # OR
p names1 # => ["jane", "jill", "beth", "frank", "rob", "david"]
names2 = imm_family.values.flatten { |v|  v }
p names2 # => ["jane", "jill", "beth", "frank", "rob", "david"]




