# Notes on Variable Scope 

# Inner scope can access variables initialized in an outer scope,
# but not vice versa.

arr = [1, 2, 3]

for i in arr do
  a = 5
end

puts a # a is accesible here because the for loop used here 
# does not create a new inner scope and is not a method invocation

=begin
There are 5 Types of Variables in Ruby:
1. Constants
  - Constants are declared by capitalizing every letter in the variable's name. They are used for storing data that never needs to change.
  - Constants cannot be declared in method definitions, and are available throughout your application's scopes.
=end

MY_CONSTANT = 'I am available throughout your application.'

=begin

2. Global Variables
  - Global variables are declared by starting the variable name with the dollar sign ($). These variables are available throughout your entire app, overriding all scope boundaries.
=end

$var = 'I am also available throughout your application.'

=begin

3. Class Variables
  
  - Class variables are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself.
  
  -  When you need to declare a variable that is related to a class, but each instance of that class does not need its own value for this variable, you use a class variable. 
  
  - Class variables must be initialized at the class level, outside of any method definitions. They can then be altered using class or instance method definitions.

=end
 
@@instances = 0

=begin
4. Instance Variables
  - Instance variables are declared by starting the variable name with one @ sign. 
  
  - These variables are available throughout the current instance of the parent class. 
  
  - Instance variables can cross some scope boundaries, but not all of them. 
=end

@var = 'I am available throughout the current instance of this class.'

=begin
5. Local Variables
  - Local variables are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.
=end

var = 'I must be passed around to cross scope boundaries.'

