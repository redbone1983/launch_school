# Pseudo-Code Practice

1; A method that returns the sum of two integers

START

DEF a method called sum
SET num1 as first param
SET num2 as second param
PRINT num1 + num2

END

2; A method that takes an array of strings, and returns a string that is all those strings concatenated together

START

DEF a method called concate
SET array_of_strings as method param
SET concate_string = an empty string
ITERATE through each STRING in array_of_strings
ADD/Concatenate CURRENT string value to concate_string
PRINT concate_string

END

3; A method that takes an array of integers, and returns a new array with every other element

START

DEF a method called every_other
SET array_of_numbers as method param
SET new_array as an empty array
ITERATE through each number in array_of_numbers
  IF index of number is equal to 0 || number % 2 is equal to 0
  go to next iteration
ELSE
  new_array << number

PRINT new_array

END
