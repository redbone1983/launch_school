# Exercise 8.
# Create a Hash using both Ruby syntax styles.
hash_style_old = {:first_name => "Anne", :last_name => "Lister"}
hash_style_new = {first_name: "Ann", last_name: "Walker"}

p hash_style_old
p hash_style_new
#=> both old and new syntax return
#=> {:first_name=>"Anne", :last_name=>"Lister"}
#=> {:first_name=>"Ann", :last_name=>"Walker"}