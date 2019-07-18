# Write a method called joinor that will produce the following result:
def joinor(arr, j1 = ', ', j2 = 'or')
  str = ""
  arr.each do |item|
    if arr.length == 2
      str = "#{arr[0]} #{j2} #{arr[1]}"
    elsif arr.length >= 3
      str = "#{arr[0]}#{j1}#{arr[1]}#{j1}#{j2} #{arr[2]}"
    end
  end
  str
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"