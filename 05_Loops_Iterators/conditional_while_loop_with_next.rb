x = 0

while x <= 10
  if x == 3
    x += 1
  next
  elsif x.odd?
    puts x
  end
  x += 1
end

# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break # thread of execution departs here
  elsif x.odd?
    puts x
  end
  x += 1
end