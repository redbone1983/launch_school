# PEDAC #

## P - [Understand the] Problem ##

### PROBLEM ###

Given a string, write a method `palindrome_substrings` which returns all the substrings from a given string which are palindromes. Consider palindrome words case sensitive.

### Test cases ###

```ruby
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []
```

### Questions you might have ###
  
  1. What is a substring?

  2. What is a palindrome?

  3. Will inputs always be non-breaking strings?

  4. What does it mean to treat palindrome words case-sensitively?

input: string object
output: an array of substrings
  
Rules given:

explicit:
  
  1. substrings must be == palindrome

  2. palindrome is a word who's value stays the same when reversed.
  
  3. palindrome substrings are case sensitive: "abacbcdbD" would not output 'dbD'
  
  4. substrings should return in a new array object
  
  5. if string contains no palindromes then return an empty array
  
  6. if string is empty, also return an empty array

implicit:
  
  1. input strings should NOT contain whitespace
  
  2. method will not mutate original string object

### What data structure could we use to solve this problem ###

An array.

## Write out an Algorithm ##

``` ruby 
# input: a string
# output: an array of substrings
# rules: palindrome words should be case sensitive, meaning "abBA"
#        is not a palindrome

# Algorithm:
#  substrings method
#  =================
#  - create an empty array called `result` which will contain all
#    the required substrings
#  - initialize variable start_substring_idx and assign 0 to it.
#  - initialize variable end_substring_idx and assign value of
#    start_substring_idx + 1 to it.
#  - Enter loop which will break when start_substring_idx is equal
#      to str.size - 1
#    - Within that loop enter another loop which will break if
#      end_substring_idx is equal to str.size
#      - append to the result array part of the string from
#        start_substring_idx to end_substring_idx
#      - increment `end_substring_idx` by 1.
#    - end the inner loop
#    - increment `start_substring_idx` by 1.
#    - reassign `end_substring_idx` to `start_substring_idx += 1`
#  - end outer loop
#  - return `result` array

#  is_palindrome? method
#  =====================
#  - check whether the string value is equal to its reversed
#    value. You can use the String#reverse method.

#  palindrome_substrings method
#  ============================
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#    - if the word is a palindrome, append it to the result
#      array
#  - return the result array
```
