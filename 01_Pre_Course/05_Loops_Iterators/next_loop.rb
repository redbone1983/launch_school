i = 0
loop do
  i += 2
  if i == 4
    next # thread of execution skips the rest of the code in this iteration and moves on to the next iteration so #4 does not print
  end
  puts i
  if i == 10
    break
  end
end