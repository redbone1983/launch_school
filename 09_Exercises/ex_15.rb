# Exercise 15.
# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr.delete_if {|string| string.start_with?("s")}
#=> ["winter", "ice", "white trees"]

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
og_arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p og_arr.delete_if {|string| string.start_with?("s", "w")}



