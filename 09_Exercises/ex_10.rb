# Exercise 10
# Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes.
# hash values as arrays
user_name_and_birth_year = {:names => ["Maya", "Gilda", "Amanda"], :birth_year => [1983, 2018, 1990]}
p user_name_and_birth_year
# array of hashes
user_profile = [{:age => 35}, {:location => "los angeles"}, {:mood => "inspired"}]
p user_profile
