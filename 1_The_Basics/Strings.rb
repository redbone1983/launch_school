# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''

=begin

Double quotes allow something called string interpolation. 
To try it out, type the following into an irb session:

irb :001 > a = 'ten'
=> "ten"

irb :002 > "My favorite number is #{a}!"
=> "My favorite number is #{a}!"

=end

# Examples of symbols

#:name
#:a_symbol
#:"surprisingly, this is also a symbol"


# Example of integers
# 1, 2, 3, 50, 10, 4345098098

# Example of floats
#1.2345, 2345.4267, 98.2234

#nil

=begin

irb :001 > puts "Hello, World!"
Hello, World!
=> nil

=end