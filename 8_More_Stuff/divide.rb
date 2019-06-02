# We can also rescue pre-existing errors when we are writing our code. Let's look at doing something like that with a divide method.

# # Here we are rescuing the ZeroDivisionError and saving it into a variable e. We then have access to the message method that the ZeroDivisionError object has available.
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4) # => 4
puts divide(4, 0) # => divided by 0 (comes from ZeroDivisionError Object's .message method)
puts divide(14, 7) # => 2


def get_names(arr)
  begin
    name = arr.fetch(4)
  rescue IndexError => e
    puts e.message
  end
end

get_names(["Maya", "Amanda"])
#=> IndexError: index 4 outside of array bounds: -2...2

def get_names(arr)
  begin
    name = arr.first("maya")
  rescue TypeError => e
    puts e.message
  end
end

puts get_names([1, 2, 3])
# => no implicit conversion of String into Integer