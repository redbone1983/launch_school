i = 0
loop do
  i += 2
  puts i
  if i == 10
    break
  end # this will cause the thread of execution to exit the link
end

