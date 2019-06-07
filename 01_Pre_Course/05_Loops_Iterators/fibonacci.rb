def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

# Important to Know #
# The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.

