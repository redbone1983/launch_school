# has_key? (non-destructive)
# The has_key? method allows you to check if a hash contains a specific key. It returns a boolean value.

color_and_hexa = { "crimson" => '#ee161f', "skyblue" => '#63cee9', "yellow" => '#eaff33'}
color_and_hexa.has_key?("skyblue") # => true

# select (non-destructive)
# The select method allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block.

p color_and_hexa.select { |k, v| k == "crimson" } # => {"crimson"=>"#ee161f"}
p color_and_hexa.select { |k, v| k == "yellow" || (v == '#63cee9') }
# {"skyblue"=>"#63cee9", "yellow"=>"#eaff33"}

# to_a (non-destructive)
# The to_a method returns an array version of your hash when called. Let's see it in action. It doesn't modify the hash permanently though.

p color_and_hexa.to_a # => [["crimson", "#ee161f"], ["skyblue", "#63cee9"], ["yellow", "#eaff33"]] 

# .keys & .values
# if you want to just retrieve all the keys or all the values out of a hash, you can do so very easily:
p color_and_hexa.keys # => ["crimson", "skyblue", "yellow"]
p color_and_hexa.values # => ["#ee161f", "#63cee9", "#eaff33"]

# chaining .keys & .each methods
color_and_hexa.keys.each { |k| puts k } # => crimson, skyblue, yellow

